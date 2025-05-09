#Data from: https://www.kaggle.com/datasets/sidhus/crab-age-prediction

#Library load
library("tidyverse")
library(usethis)
library(roxygen2)
library(devtools)

#Read in data as tibble
crab_age_pred_tbl <- readr::read_csv(file = "data-raw/CrabAgePrediction.csv",
                                     col_types = "fdddddddd")
#Set tibble as a dataset
usethis::use_data(crab_age_pred_tbl, overwrite = TRUE)