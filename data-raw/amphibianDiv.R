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
#Below code is not actually useful
# #Wide tibble of body size
# amphibian_body_size_wide_tbl <- amphibian_div_tbl |>
#   #Combine Lineages into one column
#   tidyr::unite("Lineage", c(Order,Family,Genus,Species), sep = ";") |>
#   #Select columns of interest
#   dplyr::select(c(Lineage:iucn_2cat,Body_size_mm)) |>
#   #

amphibian_body_size_wide_tbl |> dplyr::glimpse()
#Set tibble as a dataset
usethis::use_data(amphibian_div_tbl, overwrite = TRUE)
