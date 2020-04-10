#' see no evil
#'
#' @param x an input
#' @return A plot depicting \code{"No Evil."}.
#'
#' @export
#'
#' @examples
#' See(1)

See <- function(x) {
  plot(1, 10, type = "n", xaxt = "n", yaxt = "n", ann = FALSE, axes = F)
  text(1, 10, "No Evil.", cex = 7)

}



