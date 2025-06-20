% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/decode_text.R
\name{decode_text}
\alias{decode_text}
\title{Decode a numeric vector back to an alphabetic string.}
\usage{
decode_text(nums)
}
\arguments{
\item{nums}{A numeric vector with values from 1 to 26 (e.g., c(3, 1, 2)).}
}
\value{
A single string composed of lowercase letters (e.g., "cab").
}
\description{
Decode a numeric vector back to an alphabetic string.
}
\examples{
decode_text(c(3, 1, 2))
decode_text(c(1, NA, 2))  # Returns "a?b"
}
