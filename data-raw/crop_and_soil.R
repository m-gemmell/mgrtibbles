library(tidyverse)

#Read in data
crop_and_soil_raw <- readr::read_delim("data-raw/data_core.csv", delim = "," )

#Tidy
crop_and_soil_tbl <-  crop_and_soil_raw |>
#Move columns around
  dplyr::relocate(c("Soil Type", "Crop Type", "Fertilizer Name")) |>
  #Rename columns
  dplyr::rename(Soil_type="Soil Type", Crop_type="Crop Type", Fertiliser="Fertilizer Name", Temperature_celsius_kelvin=Temparature ) |>
  #Mutate Temperature column so it contains celsius and kelvin
  dplyr::mutate(Temperature_celsius_kelvin = paste0(Temperature_celsius_kelvin, "_", Temperature_celsius_kelvin-273))

usethis::use_data(crop_and_soil_tbl, overwrite = TRUE)
