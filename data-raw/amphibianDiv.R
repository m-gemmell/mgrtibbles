#Data from: https://www.kaggle.com/datasets/saurabhshahane/learning-the-wood-for-trees

#Library load
library("tidyverse")
library(usethis)
library(roxygen2)
library(devtools)

#Read in data as tibble
amphibian_div_tbl <- readr::read_csv(file = "data-raw/data.complete.feb2020.csv", 
                                     col_select = c(1:12,14:16),
                                     col_types = "cffcccddddddddf")
#Set tibble as a dataset
usethis::use_data(amphibian_div_tbl, overwrite = TRUE)
