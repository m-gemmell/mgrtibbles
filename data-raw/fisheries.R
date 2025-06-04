library(tidyverse)

#Read in data
fisheries_raw <- readr::read_delim("data-raw/capture-fisheries-vs-aquaculture.csv", delim = "," )

#Tidy
#Long version
fisheries_long_tbl <- fisheries_raw |>
  dplyr::select(-c("Code","Aquaculture production (metric tons)")) |>
  dplyr::rename("Metric_tons"=`Capture fisheries production (metric tons)`)
#Wide Version
fisheries_wide_tbl <- fisheries_long_tbl |>
  tidyr::pivot_wider(names_from = Year, values_from = Metric_tons)

usethis::use_data(fisheries_long_tbl, overwrite = TRUE)
usethis::use_data(fisheries_wide_tbl, overwrite = TRUE)