#' Max counts of bat roosts of different species across the UK
#'
#' The dataset was produced by The National Bat Monitoring Programme (NBMP) in the UK
#' Contains National Bat Monitoring Programme (NBMP) data © copyright and database right Bat Conservation Trust and the Joint Nature Conservation Committee, 2025.
#' 
#' @format A tibble with 3,054 rows and 6 variables:
#' \describe{
#'   \item{Species}{chr Bat species}
#'   \item{RoostCode}{fct Unique Roost code} 
#'   \item{MaxCountInAnyYear}{dbl Max yearly bat population count of roost}
#'   \item{County}{chr Country roost is located in}
#'   \item{Regio}{chr Region roost is located in}
#'   \item{Country}{chr Country roost is located in}
#' }
#' @source \url{https://www.bats.org.uk/our-work/national-bat-monitoring-programme/reports/nbmp-annual-report}
"bat_roost_tbl"