#Data from: https://www.kaggle.com/datasets/volkandl/sleep-in-mammals

#Library load
library("tidyverse")
library(usethis)
library(roxygen2)
library(devtools)

#Read in data as tibble
mammal_sleep_tbl <- readr::read_csv(file = "data-raw/mammals.csv",
                                    col_types = "cdddddddfff")
#Set tibble as a dataset
usethis::use_data(mammal_sleep_tbl, overwrite = TRUE)