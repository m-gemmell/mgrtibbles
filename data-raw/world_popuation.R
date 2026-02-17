#Data from: https://www.kaggle.com/datasets/iamsouravbanerjee/world-population-dataset

#Library load
library("tidyverse")
library(usethis)
library(roxygen2)
library(devtools)

#Read in data as tibble
world_pop_wide_tbl <- readr::read_delim(file = "data-raw/world_population.csv", delim = ",",
                                   col_type="dffcfdddddddddddd") |>
  #Remove some columns
  dplyr::select(CCA3:`Area (km squared)`) |>
  #Rename columns
  dplyr::rename(Area_km2=`Area (km squared)`)

colnames(world_pop_wide_tbl) <- gsub(" Population", "", colnames(world_pop_wide_tbl))

world_pop_wide_tbl |> glimpse()

#Long version
world_pop_tbl <- world_pop_wide_tbl |>
  tidyr::pivot_longer(`2022`:`1970`, names_to="Year", values_to="Population")

#

#Set tibble as a dataset
usethis::use_data(world_pop_wide_tbl, overwrite = TRUE)
usethis::use_data(world_pop_tbl, overwrite = TRUE)
