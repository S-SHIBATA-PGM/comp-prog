con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
ABC <- "ABC"
ARC <- "ARC"
blank <- ""
one <- 1L
one_thousand_two_hundred <- 1200L
x <- arr[one] |>
  as.integer()
if (x < one_thousand_two_hundred) {
  ABC |>
    cat("\n", sep = blank)
} else {
  ARC |>
    cat("\n", sep = blank)
}
q("no")