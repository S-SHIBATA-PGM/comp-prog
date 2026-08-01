con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
zero <- 0L
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
Y <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
Z <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
# nolint start
# 計算過程
# X + k = Z * (Y + k)
# X + k = Z * Y + Z * k
# k - Z * k = Z * Y - X
# k(1 - Z) = Z * Y - X
# k(Z - 1) = X - Z * Y
# k = (X - Z * Y) / (Z - 1)
# nolint end
if ((X - Y * Z) >= zero && (X - Y * Z) %% (Z - one) == zero) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")