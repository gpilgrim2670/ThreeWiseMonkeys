library(stringr)

test_that("Here works string", {
  expect_match(Hear("evil"), "I can't hear you!")
})

test_that("Here works string 2", {
  expect_match(Hear("no- _evil"), "I hear you!")
})

test_that("Here works value", {
  evil <- "asdf"
  expect_match(Hear(evil), "I can't hear you!")
})

test_that("Here works value 2", {
  no_evil <- "asdf"
  expect_match(Hear(no_evil), "I hear you!")
})
