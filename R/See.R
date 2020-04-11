#' see no evil
#'

#' @return A plot depicting \code{"No Evil."}.
#'
#' @export
#'
#' @examples
#' See()

See <- function() {
  plot(1, 10, type = "n", xaxt = "n", yaxt = "n", ann = FALSE, axes = F)
  text(1, 10, "No Evil.", cex = 7)
}



