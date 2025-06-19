test_that("encode_text works for simple input", {
  expect_equal(encode_text("abc"), c(1, 2, 3))
  expect_equal(encode_text("a!c"), c(1, NA, 3))
})

test_that("encode_text correctly maps letters to positions", {
  expect_equal(encode_text("abc"), c(1, 2, 3))
  expect_equal(encode_text("z"), 26)
  expect_equal(encode_text("Cab"), c(3, 1, 2))  # case-insensitive
})

test_that("encode_text handles non-alphabetic input with NAs", {
  expect_equal(encode_text("a1c"), c(1, NA, 3))
  expect_equal(encode_text("!"), NA_integer_)
  expect_warning(encode_text("abc123"))
})
