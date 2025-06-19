#' Encode a string into numeric positions
#'
#' @param text A character string
#' @return A numeric vector
#' @export
encode_text <- function(text) {
  chars <- strsplit(tolower(text), "")[[1]]
  positions <- match(chars, letters)
  if (any(is.na(positions))) {
    warning("Non-alphabetic characters will return NA")
  }
  return(positions)
}
