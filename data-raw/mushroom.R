#Data from: https://www.kaggle.com/datasets/devzohaib/mushroom-edibility-classification

#Library load
library("tidyverse")
library(usethis)
library(roxygen2)
library(devtools)

#Read in data as tibble
mushroom_tbl <- readr::read_delim(file = "data-raw/mushroom.csv", delim = ";",
                                  col_type = "fdffflfffddfffffflffff") |>
  #Remove empty columns
  dplyr::select(c(1:7,9:11))
#Change column names
new_col_names <- gsub(pattern = "-", replacement = "_",
                      colnames(mushroom_tbl))
colnames(mushroom_tbl) <- new_col_names

#Rename factors from single letters to words
mushroom_tbl$class <-
dplyr::pull(mushroom_tbl,class) |>
  forcats::fct_recode(poisonous="p", edible="e")
mushroom_tbl$cap_shape <-
  dplyr::pull(mushroom_tbl,cap_shape) |>
  forcats::fct_recode(bell="b", conical="c", convex="x", 
                      flat="f", sunken="s",spherical="p", others="o")
mushroom_tbl$cap_surface <-
  dplyr::pull(mushroom_tbl,cap_surface) |>
  forcats::fct_recode(brous="i", grooves="g", scaly="y", smooth="s",
                      shiny="h", leathery="l", silky="k", sticky="t",
                      wrinkled="w", fleshy="e")
mushroom_tbl$cap_color <-
  dplyr::pull(mushroom_tbl,cap_color) |>
  forcats::fct_recode(brown="n", buff="b", gray="g", green="r", 
                      pink="p", purple="u", red="e", white="w",
                      yellow="y", blue="l", orange="o", black="k")
mushroom_tbl$gill_attachment <-
  dplyr::pull(mushroom_tbl,gill_attachment) |>
  forcats::fct_recode(adnate="a", adnexed="x", decurrent="d", free="e",
                      sinuate="s", pores="p", none="f", unknown="?")
mushroom_tbl$gill_color <-
  dplyr::pull(mushroom_tbl,gill_color) |>
  forcats::fct_recode(brown="n", buff="b", gray="g", green="r", 
                      pink="p", purple="u", red="e", white="w",
                      yellow="y", blue="l", orange="o", black="k",
                      none="f")

mushroom_tbl |> glimpse()

#Set tibble as a dataset
usethis::use_data(mushroom_tbl, overwrite = TRUE)
