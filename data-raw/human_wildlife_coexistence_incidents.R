#Data from: https://www.kaggle.com/datasets/mpwolke/human-wildlife

#Library load
library("tidyverse")
library(usethis)
library(roxygen2)
library(devtools)

#Read in data as tibble
parks_canada_coexistence_incidents_tbl <- readr::read_delim(
  file = "data-raw/human_wildlife_coexistence_ incidents.csv", delim = ";",
  col_type = "ccccccccdc") |>
  #Remove unwanted columns
  dplyr::select(c(`Protected Heritage Area`,`In Park`,`Incident Type`)) |>
  #Rename columns
  dplyr::rename(Area=`Protected Heritage Area`,In_park=`In Park`,Incident_type=`Incident Type`) |>
  dplyr::count(Area, In_park, Incident_type) |>
  dplyr::rename(Incidents=n)

parks_canada_coexistence_incidents_wide_tbl <- parks_canada_coexistence_incidents_tbl |>
  tidyr::pivot_wider(names_from = Area, values_from=Incidents)



#Set tibble as a dataset
usethis::use_data(parks_canada_coexistence_incidents_tbl, overwrite = TRUE)

