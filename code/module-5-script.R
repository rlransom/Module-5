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
# Check the packaging ----
# Look at the top and bottom of your data ----
# Check your “n”s ----
# Validate with at least one external data source ----
# Make a plot ----
# Try the easy solution first ----
# Create a data subset ----
# 1. Select only the columns that we need
# 2. Filter the rows such that we only have NC data
# 3. Create a new column that includes the AQI classifications
    # Check the packaging ----
    # Look at the top and bottom of your data ----
    # Check your “n”s ----
    # Validate with at least one external data source ----
    # Make a plot ----
    exposed_counties <- c("Dare", "Tyrrell", "Hyde", "Beaufort", 
                          "Pamlico", "Pitt", "Craven", "Jones", 
                          "Lenoir", "Greene", "Wilson", "Wayne", 
                          "Johnston", "Sampson", "Duplin", "Chowan", 
                          "Pasquotank", "Perquimans")
# Follow up ----