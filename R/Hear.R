#' hear no evil
#'
#' A function that will only "hear" an input containing variants on the string `"no evil"`.
#' `Hear` is not case sensitive and will remove punctuation so `"no_Evil"` and `"nO- _eVil"` will also be heard.
#' `Hear` is also sensitive to value names so passing an object `no_evil <- "asdf"` containing any arbitrary strings will also be heard.
#' Anything that is not specifically `"no evil"` or some acceptable variant is assumed to be evil and will not be heard.
#'
#' @author Greg Pilgrim \email{gpilgrim2670@@gmail.com}
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
#' Hear(NA)

Hear <- function(x) {
  var_name <- tolower(deparse(substitute(x)))
  var_name <- stringr::str_replace_all(var_name, "[:punct:]", " ")
  if(is.na(x) == TRUE) return("I can't hear you!")
  x <- tolower(x)
  x <- stringr::str_replace_all(x, "[:punct:]", " ")
  if(stringr::str_detect(x, "no\\s{0,}evil") | stringr::str_detect(var_name, "no\\s{0,}evil")) {
    return("I hear you!")
  } else {
    return("I can't hear you!")
  }

}
