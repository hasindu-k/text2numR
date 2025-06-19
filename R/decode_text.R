#' Decode a numeric vector back to an alphabetic string.
#'
#' @param nums A numeric vector with values from 1 to 26 (e.g., c(3, 1, 2)).
#' @return A single string composed of lowercase letters (e.g., "cab").
#' @examples
#' decode_text(c(3, 1, 2))
#' decode_text(c(1, NA, 2))  # Returns "a?b"
#' @export
decode_text <- function(nums) {
  if (!is.numeric(nums)) {
    stop("Input must be a numeric vector.")
  }

  # Replace invalid positions with NA
  valid <- ifelse(nums >= 1 & nums <= 26, nums, NA)

  # Map to letters; NA becomes "?"
  output <- ifelse(is.na(valid), "?", letters[valid])

  # Return combined string
  paste0(output, collapse = "")
}
