#' hear no evil
#'
#' @importFrom tuneR play
#'
#' @param x an input
#' @return Plays an audio clip of the words "No Evil.".
#'
#' @export
#'
#' @examples
#' Hear(1)
#'

Hear <- function(x) {
  file_path <- system.file("audio", "No_Evil.wav", package = "ThreeWiseMonkeys")
  file_path <- "audio/No_Evil.wav"
  tuneR::play(file_path)
}
