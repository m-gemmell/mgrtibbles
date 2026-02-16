#Data from: https://www.kaggle.com/datasets/elmoallistair/living-planet-index

#Library load
library("tidyverse")
library(usethis)
library(roxygen2)
library(devtools)

#Read in data as tibble
living_planet_tbl <- readr::read_delim(file = "data-raw/living-planet-index.csv", delim = ";",
                                       col_type = "fdddd")

#Wide version with only Average index values
living_planet_wide_tbl <- living_planet_tbl |>
  #Remove Upper and lower index values
  dplyr::select(Region:`Average Index`) |>
  #Widen
  tidyr::pivot_wider(names_from=Year, values_from=`Average Index`)


#Set tibbles as datasets
usethis::use_data(living_planet_tbl, overwrite = TRUE)
usethis::use_data(living_planet_wide_tbl, overwrite = TRUE)