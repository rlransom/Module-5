# Module 5: Transforming Data in R

**Part 1: Work through R4DS Chapter 5, Data transformation**
- Required: [R4DS Chapter 5, Data transformation](https://r4ds.had.co.nz/transform.html)
- Optional: Watch the tutorial [video on working with pipes](https://youtu.be/i8-GlzYf5dM).

**Part 2: Watch the Exploratory Data Analysis video and follow along with the exercise**
- Watch the video [here](https://youtu.be/ejovGHDpnqE).

**Part 3: Complete homework exercises**

The following exercises should be completed in a R script. You will not be submitting this R script for a grade, but these exercises and the code you prepare to work through the exercises **will** be the focus of a quiz question(s).  

The output associated with the correct code for each exercise is shown at the bottom of the exercise webpages (under the `[click here for output]` hyperlink). The output is provided so you can check the accuracy of your code. You are welcome to work with others on these exercises. 

Happy coding!  

- Exercise 1: [Complete 1-7](https://datacarpentry.org/semester-biology/exercises/Dplyr-shrub-volume-data-basics-R/). The exercise instructs you to use `read.csv()` - don’t! Use `read_csv()` instead. The data file is already included in the data subdirectory: `shrub-volume-data.csv`

- Exercise 2: [Complete 1-2](https://datacarpentry.org/semester-biology/exercises/Dplyr-shrub-volume-aggregation-R/).

- Exercise 3: [Complete 1-2](https://datacarpentry.org/semester-biology/exercises/Dplyr-fix-the-code-R/). 

- Exercise 4: [Complete 1-5](https://datacarpentry.org/semester-biology/exercises/Portal-data-manip-pipes-R/). Remember to use `read_csv()` instead of `read.csv()`. The data file is already included in the data subdirectory: `surveys.csv`. Note that the each row of the `surveys.csv` dataset corresponds to an individual organism, and the weights provided in the data are in **grams**. You are asked to use a new function, `na.omit()`. `na.omit()` will remove all rows in which there are NA values, and it can be used with pipes, e.g.: `data %>% na.omit() %>% mutate(...)`.

These exercises are directly from [Data Carpentry for Biologists](https://datacarpentry.org/semester-biology/) by Ethan White
and Zachary Brym. Used under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). Material presented in this module is not endorsed by the licensors.
