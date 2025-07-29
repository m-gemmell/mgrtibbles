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
#Set tibble as a dataset
usethis::use_data(bat_roost_tbl, overwrite = TRUE)
