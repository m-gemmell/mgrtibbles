R tibbles containing various data curated by m-gemmell

Install and load with:

`# install.packages("remotes")`

`remotes::install_github("m-gemmell/mgrtibbles")`

`library(mgrtibbles)`

To see the format and variable description use `?`.
For example:

`?crab_age_pred_tbl`

Datasets include:

crab_age_pred_tbl: https://www.kaggle.com/datasets/sidhus/crab-age-prediction

mammal_sleep_tbl: https://www.kaggle.com/datasets/volkandl/sleep-in-mammals

amphibian_div_tbl: https://www.kaggle.com/datasets/saurabhshahane/learning-the-wood-for-trees

fisheries_long_tbl: https://www.kaggle.com/datasets/sergegeukjian/fish-and-overfishing?select=capture-fisheries-vs-aquaculture.csv

fisheries_wide_tbl: https://www.kaggle.com/datasets/sergegeukjian/fish-and-overfishing?select=capture-fisheries-vs-aquaculture.csv

crop_and_soil_tbl: https://www.kaggle.com/datasets/shankarpriya2913/crop-and-soil-dataset

bat_roost_tbl: https://www.bats.org.uk/our-work/national-bat-monitoring-programme/reports/nbmp-annual-report

__Note:__ Page for mammal_sleep_tbl says the brain_wt is in kg when it is in grams. 
The values in the included tibble have been converted to kgs.

Package created with guidance from : https://rstudio4edu.github.io/rstudio4edu-book/data-pkg.html
