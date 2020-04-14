# Three Wise Monkeys <img src="inst/logos/hex_logo.png" width="131px" height="140px" align="right" style="padding-left:10px;background-color:white;" />

## Introduction
`ThreeWiseMonkeys` is an R implementation of the Japanese pictorial maxim "see no evil, hear no evil, speak no evil".  It is otherwise useless.

![](inst/logos/Monkeys_Horizontal.png)


## Functions
Correspondingly `ThreeWiseMonkeys` has three functions: `See`, `Hear` and `Speak`.

### See
The `See` function "sees" no evil the form of a plot reading "No evil.".

### Speak
The `Speak` function speaks "no evil", in the form of an audio file played by the user's default .wav player.  This should work by default on Windows and Linux.  Mac users may need to set their default player using something like `tuneR::setWavPlayer("/Applications/'QuickTime Player.app'/Contents/MacOS/'QuickTime Player'")`

### Hear
The `Hear` function can only hear no evil.  More specifically `Hear` will only accept either strings containing some variant of `"no evil"` or values/objects with names containing some variant of "no evil".  The function will replace punctuation with spaces and multiple spaces with a single space, as well as ignoring case, so strings like `"no_evil"` and `"No  - eVil"` will be accepted.  Anything else passed to `Hear` will throw an error.

## What's the point?
`ThreeWiseMonkeys` is an experiment.  It began when I noticed that ~1700 people had downloaded an early version of my `SwimmeR` package in the first few months it was available.  `SwimmeR` by its nature has limited appeal given that its use is downloading, cleaning, and otherwise working with data from swimming competitions.  Only some many people are interested in that sort of thing, and 1700 seemed like a lot, especially for an early stage (0.0.1 version) package with only a couple niche-use functions.

Enter `ThreeWiseMonkeys`, a package with no use whatsoever.  I plan to submit it to CRAN and then use it as a baseline for looking at CRAN downloads.
