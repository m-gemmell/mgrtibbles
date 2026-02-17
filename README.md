R tibbles containing various data curated by m-gemmell

Install and load with:

`# install.packages("remotes")`

`remotes::install_github("m-gemmell/mgrtibbles")`

`library(mgrtibbles)`

To see the format and variable description use `?`.
For example:

`?crab_age_pred_tbl`

Datasets include:

crab_age_pred_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/crab_age_pred_tbl

mammal_sleep_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/mammal_sleep_tbl

amphibian_div_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/amphibian_div_tbl

fisheries_long_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/fisheries_long_tbl

fisheries_wide_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/fisheries_wide_tbl

crop_and_soil_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/crop_and_soil_tbl

bat_roost_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/bat_roost_tbl

bat_roost_wide_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/bat_roost_wide_tbl

mushroom_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/mushroom_tbl

living_planet_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/living_planet_tbl

living_planet_wide_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/living_planet_wide_tbl

world_pop_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/world_pop_tbl

world_pop_wide_tbl: https://github.com/m-gemmell/mgrtibbles/wiki/world_pop_wide_tbl

__Note:__ Page for mammal_sleep_tbl says the brain_wt is in kg when it is in grams. 
The values in the included tibble have been converted to kgs.

Package created with guidance from : https://rstudio4edu.github.io/rstudio4edu-book/data-pkg.html

For convenience to make a new object (tbl is template name of object):

Step 0: Load libraries

`library("tidyverse")`
`library(usethis)`
`library(roxygen2)`
`library(devtools)`

Step 1: Add a .R file in "data-raw" to make the object ending the script with:

`usethis::use_data(tbl, overwrite = TRUE)`

Step 2: Document the dataset

#Create a doc in "R/"
`usethis::use_r("tbl")`

#Edit the created "R/tbl.R" file using another as an example

#Document the document
`devtools::document()`

Step 3: Check and install

Use the Build tab of RSudio and press the Check button to check the package

If everythign is ok install the current version:

`devtools::install()`

Step 4: Push to github

