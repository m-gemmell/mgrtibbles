#Data from: https://www.bats.org.uk/our-work/national-bat-monitoring-programme/reports/nbmp-annual-report
#Contains National Bat Monitoring Programme (NBMP) data © copyright and database right Bat Conservation Trust and the Joint Nature Conservation Committee, 2025.

#Library load
library("tidyverse")
library(usethis)
library(roxygen2)
library(devtools)

#Read in data as tibble
bat_roost_tbl <- readr::read_csv(file = "data-raw/Roost Count peak counts.csv",
                                  col_types = "cfdccc")

#Wide tibble
bat_roost_wide_tbl <- bat_roost_tbl |>
  #Remove RoostCode
  dplyr::select(-RoostCode) |>
  #Combine County Region and Country
  tidyr::unite("Area", County:Country, sep = ";") |>
  #Group by species and area
  dplyr::group_by(Area, Species) |>
  #Combine groups so they have the mean MaxCountInAnyYear
  dplyr::summarise(mean=mean(MaxCountInAnyYear)) |>
  #Widen
  tidyr::pivot_wider(names_from = Species, values_from = mean)
#Convert all NAs to 0
bat_roost_wide_tbl[is.na(bat_roost_wide_tbl)] <- 0

#Set tibble as a dataset
usethis::use_data(bat_roost_tbl, overwrite = TRUE)
usethis::use_data(bat_roost_wide_tbl, overwrite = TRUE)
