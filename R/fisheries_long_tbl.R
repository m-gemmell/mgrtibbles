#' Data of fish and overfishing
#'
#' A long formatted tibble containing information on capture fishery production on various entities from 1960 to 2018
#'
#' @format A tibble with 14,674 rows and 3 variables:
#' \describe{
#'   \item{Entitity}{chr Country or region}
#'   \item{Year}{dbl Gregorian calendar year in AD} 
#'   \item{Metric_tons}{dbl Captured production in metric tons}
#' }
#' @source \url{https://www.kaggle.com/datasets/sergegeukjian/fish-and-overfishing?select=capture-fisheries-vs-aquaculture.csv}
"fisheries_long_tbl"