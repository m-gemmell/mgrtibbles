#' Sleep Durations of Different Mammals
#'
#' 39 species of mammals distributed over 13 orders are exemined according to their sleeping time. A data frame with 62 observations on the following 11 variables.
#' License of data is CC0: Public Domain
#' 
#' @format A tibble with 62 rows and 11 variables:
#' \describe{
#'   \item{species}{fct Species of mammals}
#'   \item{body_wt}{dbl Total body weight of the mammal (in kg))} 
#'   \item{brain_wt}{dbl Brain weight of the mammal (in g)}
#'   \item{non_dreaming}{dbl Number of hours of non dreaming sleep}
#'   \item{dreaming}{dbl Number of hours of dreaming sleep}
#'   \item{total_sleep}{dbl Total number of hours of sleep}
#'   \item{life_span}{dbl Life span (in years)}
#'   \item{gestation}{dbl Gestation time (in days)}
#'   \item{predation}{fct An index of how likely the mammal is to be preyed upon. 1 = least likely to be preyed upon. 5 = most likely to be preyed upon.}
#'   \item{exposure}{fct An index of the how exposed the mammal is during sleep. 1 = least exposed (e.g., sleeps in a well-protected den). 5 = most exposed.}
#'   \item{danger}{fct An index of how much danger the mammal faces from other animals. This index is based upon Predation and Exposure. 1 = least danger from other animals. 5 = most danger from other animals.}
#' }
#' @source \url{https://www.kaggle.com/datasets/volkandl/sleep-in-mammals}
"mammal_sleep_tbl"