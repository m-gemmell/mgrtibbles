#' Physical attributes of Crabs found in Boston area - to predict age of Crab
#'
#' The dataset is used to estimate the age of the crab based on the physical attributes. Its a great starting point for classical regression analysis and feature engineering and understand the impact of feature engineering in Data Science domain.
#' License of data is CC0: Public Domain
#' 
#' @format A tibble with 3,893 rows and 9 variables:
#' \describe{
#'   \item{Sex}{fct Gender of the Crab - Male, Female and Indeterminate}
#'   \item{Length}{dbl Length of the Crab (in Feet; 1 foot = 30.48 cms)} 
#'   \item{Diameter}{dbl Diameter of the Crab (in Feet; 1 foot = 30.48 cms)}
#'   \item{Height}{dbl Height of the Crab (in Feet; 1 foot = 30.48 cms)}
#'   \item{Weight}{dbl Weight of the Crab (in ounces; 1 Pound = 16 ounces)}
#'   \item{`Shucked Weight`}{dbl Weight without the shell (in ounces; 1 Pound = 16 ounces)}
#'   \item{`Viscera Weight`}{dbl Weight that wraps around abdominal organs deep inside body (in ounces; 1 Pound = 16 ounces)}
#'   \item{`Shell Weight`}{dbl Weight of the Shell (in ounces; 1 Pound = 16 ounces)}
#'   \item{Age}{dbl Age of the Crab (in months)}
#' }
#' @source \url{https://www.kaggle.com/datasets/sidhus/crab-age-prediction}
"crab_age_pred_tbl"