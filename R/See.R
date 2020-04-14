#' See No Evil
#'
#' Allows the user to see no evil - specifically a plot containing the text "No evil.".  Fun for the whole family.
#'
#' @author Greg Pilgrim \email{gpilgrim2670@@gmail.com}
#'
#' @return A plot depicting \code{"No evil."}.
#'
#' @param ... an input, doesn't matter, isn't used
#' @export
#'
#' @examples
#' See()

See <- function(...) {
  plot(1, 10, type = "n", xaxt = "n", yaxt = "n", ann = FALSE, axes = F)
  text(1, 10, "No evil.", cex = 7)
}



