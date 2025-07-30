#' Mushroom Edibility Classification
#'
#' This dataset includes 61069 hypothetical mushrooms with caps based on 173 species (353 mushrooms per species). Each mushroom is identified as definitely edible, definitely poisonous, or of unknown edibility and not recommended (the latter class was combined with the poisonous class). Of the 20 variables, 17 are nominal and 3 are metrical.
#'
#' @format A tibble with 61,069 rows and 10 variables:
#' \describe{
#'   \item{Class}{fct Edibility of mushroom.}
#'   \item{cap_diameter }{dbl cap diamters in cm}
#'   \item{cap_shape}{fct Cap shape}
#'   \item{cap_surface }{fct Texture of cap surface}
#'   \item{cap_color}{fct Colour of cap}
#'   \item{does_bruise_or_bleed}{lgl Whether it bleeds/bruises or not}
#'   \item{gill_attachment}{fct Gill attachment}
#'   \item{gill_color}{fct Colour of gills}
#'   \item{stem_height}{dbl Stem height in cm}
#'   \item{stem_width}{dbl Stem width in cm}
#' }
#' @source \url{https://www.kaggle.com/datasets/shankarpriya2913/crop-and-soil-dataset}
"mushroom_tbl"