test_that("decode_text correctly converts numbers to letters", {
  expect_equal(decode_text(c(1, 2, 3)), "abc")
  expect_equal(decode_text(26), "z")
})

test_that("decode_text handles invalid values with '?'", {
  expect_equal(decode_text(c(1, 27, 3)), "a?c")
  expect_equal(decode_text(c(NA, 2)), "?b")
})

test_that("decode_text fails on non-numeric input", {
  expect_error(decode_text("abc"))
  expect_error(decode_text(list(1, 2, 3)))
})
