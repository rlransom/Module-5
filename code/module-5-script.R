########################################################################################
# Summary: Exploratory Data Analysis of Air Quality Index - PM2.5 measurements from 2008
# Date: September 18, 2019
########################################################################################

# Clear workspace & load packages ----
rm(list=ls(all=TRUE))
library(tidyverse)
library(ggthemes)

# Formulate your question ----
### General question: What was on-the-ground air quality like during the peat fires of 2008?
### Specific question: Among the counties where air quality data are available, what were the maximum air quality index values observed in “exposed counties” during the peat fires of 2008?

# Read in your data ----
aqi <- read_csv("data/daily_aqi_2008.csv")
# Check the packaging ----
str(aqi)
colnames(aqi)
# Look at the top and bottom of your data ----
head(aqi)
tail(aqi)
View(aqi)
# Check your “n”s ----
dim(aqi)
nrow(aqi)
ncol(aqi)
# Validate with at least one external data source ----
summary(aqi)
# Make a plot ----
ggplot(data = aqi) +
    geom_point(mapping = aes(x = date_local, y = aqi),
               size = 0.5) +
    theme_few() +
    facet_wrap( ~ state_name)
# Try the easy solution first ----
# Create a data subset ----
# 1. Select only the columns that we need
# 2. Filter the rows such that we only have NC data
# 3. Create a new column that includes the AQI classifications
#type package name and two colons before a function to specify which package it will come from
nc_aqi <- aqi %>%
    dplyr::select(month, day, aqi, state_name, county_name) %>%
    filter(state_name == "North Carolina") %>%
    mutate(aqi_category = if_else(aqi < 100, "OK", "Not OK"))

filter(nc_aqi, aqi_category == "Not OK")

    # Check the packaging ----
str(nc_aqi)
    # Look at the top and bottom of your data ----
head(nc_aqi)
tail(nc_aqi)
    # Check your “n”s ----
nrow(nc_aqi)
ncol(nc_aqi)
    # Validate with at least one external data source ----
Summary(nc_aqi)
    # Make a plot ----
    exposed_counties <- c("Dare", "Tyrrell", "Hyde", "Beaufort", 
                          "Pamlico", "Pitt", "Craven", "Jones", 
                          "Lenoir", "Greene", "Wilson", "Wayne", 
                          "Johnston", "Sampson", "Duplin", "Chowan", 
                          "Pasquotank", "Perquimans")

length(exposed_counties)

nc_exposed <- nc_aqi %>%
    filter(county_name %in% exposed_counties)

unique(nc_exposed$county_name)

nc_exposed %>%
    filter(month == 6) %>%
    ggplot() +
    geom_vline(xintercept = c(10, 12), color = "grey") +
    geom_line(mapping = aes(x=day, y=aqi, group = county_name))+
    geom_point(mapping = aes(x = day, y = aqi, color = aqi_category)) +
    theme_few() +
    facet_wrap(~ county_name)

nc_exposed %>%
    group_by(county_name, month) %>%
    summarize(max_aqi = max(aqi)) %>%
    View()

# Follow up ----
#Do we actually have the info needed to address our question? Did we gather any helpful information that will help us answer our question?