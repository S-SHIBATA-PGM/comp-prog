con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
ABC <- "ABC"
chokudai <- "chokudai"
blank <- ""
one <- 1L
Q <- arr[one] |>
  as.integer()
if (Q == one) {
  ABC |>
    cat("\n", sep = blank)
} else {
  chokudai |>
    cat("\n", sep = blank)
}
q("no")