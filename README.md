# text2numR

<!-- badges: start -->
<!-- [![R-CMD-check](https://github.com/hasindu-k/text2numR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/hasindu-k/text2numR/actions) -->
[![R-CMD-check](https://github.com/hasindu-k/text2numR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/hasindu-k/text2numR/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The **text2numR** package provides simple encoding and decoding tools that map lowercase alphabetic characters to their numerical positions (a = 1, b = 2, ..., z = 26), and vice versa. This is useful for educational purposes, cryptographic play, and natural language processing experiments.

---

## ✨ Features

- Encode text like `"cab"` to numeric: `c(3, 1, 2)`
- Decode numeric vectors like `c(3, 1, 2)` to `"cab"`
- Handles case-insensitive input
- Gracefully manages invalid or missing values

---

## 📦 Installation

You can install the development version of `text2numR` from [GitHub](https://github.com/hasindu-k/text2numR) with:

```r
# Option 1: using pak (recommended)
install.packages("pak")
pak::pak("hasindu-k/text2numR")

# OR Option 2: using devtools
devtools::install_github("hasindu-k/text2numR")
```

## 🧪 Examples

Encode a string to numbers:

```r
library(text2numR)

encode_text("chat")
# [1] 3 8 1 20
```

Decode numbers to a string:

```r
decode_text(c(3, 8, 1, 20))
# [1] "chat"
```

Handle invalid or mixed input:

```r
encode_text("r2d2")
# [1] 18 NA 4 NA

decode_text(c(1, 27, NA, 2))
# [1] "a??b"
```

## 📂 Project Structure

This package follows standard R package structure with:

- Functions defined in `/R`
- Documentation using Roxygen2
- Tests (coming soon!) in `/tests/testthat`
- Build tools: devtools, usethis, roxygen2

## 📜 License

MIT © 2025 Hasindu

## 🙌 Contributions

Issues and pull requests are welcome! Feel free to fork the repo and suggest improvements.

---

### 🔧 Tips

- Be sure to replace `"hasindu-k"` with your actual GitHub username if it differs.
- Commit this file into your project root.
- Run `devtools::build_readme()` (optional) to render a preview.
