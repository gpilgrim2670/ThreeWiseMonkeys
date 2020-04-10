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
  # file_path <- here::here("audio", "No_Evil.wav")
  # tuneR::setWavPlayer("/Applications/'QuickTime Player.app'/Contents/MacOS/'QuickTime Player'")
  if(Sys.info()[['sysname']] == "Darwin") {
    message("ThreeWiseMonkeys requires you supply a .wav player as for example tuneR::setWavPlayer(path to player) prior to calling Here()")
  tuneR::play(file_path)
  } else {
    message("ThreeWiseMonkeys will launch your default .wav player.")
    tuneR::play(file_path)
  }
}
