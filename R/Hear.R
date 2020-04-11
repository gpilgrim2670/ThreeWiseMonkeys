#' hear no evil
#'
#' @importFrom stringr str_replace_all
#' @importFrom stringr str_detect
#' @param x an input
#' @return The string \code{"No Evil."}.
#'
#' @export
#'
#' @examples
#' Hear(1)
#' Hear("No Evil")
#' no_evil <- "good stuff"
#' Hear(no_evil)
#' evil <- "good_stuff"
#' Hear(evil)

Hear <- function(x) {
  var_name <- tolower(deparse(substitute(x)))
  var_name <- stringr::str_replace_all(var_name, "[:punct:]", " ")
  x <- tolower(x)
  x <- stringr::str_replace_all(x, "[:punct:]", " ")
  if(stringr::str_detect(x, "no\\s{0,}evil") | stringr::str_detect(var_name, "no\\s{0,}evil")) {
    return("I hear you!")
  } else {
    return("I can't hear you!")
  }
}
