#' Predicting amphibian intraspecific diversity with machine learning
#'
#' Barrow, Lisa (2020), Predicting amphibian intraspecific diversity with machine learning: Challenges and prospects for integrating traits, geography, and genetic data, Dryad, Dataset, https://doi.org/10.5061/dryad.0cfxpnvzh
#' License of data is CC0 1.0 Universal (CC0 1.0)
#' 
#' @format A tibble with 138 rows and 16 variables:
#' \describe{
#'   \item{species}{chr Species names}
#'   \item{IUCN.Red.List.Status}{fct IUCN red list status} 
#'   \item{iucn_2cat}{fct LC or nonLC}
#'   \item{Order}{chr Order name}
#'   \item{Family}{chr Family name}
#'   \item{Genus}{chr Total number of hours of sleep}
#'   \item{Age_at_maturity_min_y}{dbl Minimum age at maturity in years}
#'   \item{Age_at_maturity_max_y}{dbl maximum age at maturity in years}
#'   \item{Body_size_mm}{dbl Avergae body size in millimetres}
#'   \item{Longevity_max_y}{dbl Max longevity in years}
#'   \item{Litter_size_min_n}{dbl Minimum litter size}
#'   \item{Litter_size_max_n}{dbl Maximum litter size}
#'   \item{Offspring_size_min_mm}{dbl Minimum offspring size in millimetres}
#'   \item{Offspring_size_max_mm}{dbl Maximum offspring size in millimetres}
#'   \item{Development}{fct Method of development (direct or larval)}
#' }
#' @source \url{https://www.kaggle.com/datasets/saurabhshahane/learning-the-wood-for-trees}
"amphibian_div_tbl"