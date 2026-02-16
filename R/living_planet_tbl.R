#' Average change in population size of of studied animal population
#'
#' The Living Planet Index (LPI) is a measure of the state of global biological diversity based on population trends of vertebrate species from around the world. The index value is measured relative to species' populations in 1970 (i.e. 1970 = 1).
#' 
#' @format A tibble with 342 rows and 5 variables:
#' \describe{
#'   \item{Region}{fct Region or group}
#'   \item{Year}{dbl Year} 
#'   \item{Average Index}{dbl Average Index}
#'   \item{Upper Index}{dbl Upper Index Confidence}
#'   \item{Lower Index}{dbl Lower Index Confidence}
#' }
#' @source \url{https://www.kaggle.com/datasets/elmoallistair/living-planet-index}
"living_planet_tbl"