con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
one <- 1L
three <- 3L
six <- 6L
X <- arr[one] |>
  as.integer()
if (one * three <= X && X <= six * three) {
  Yes |>
    cat("\n", sep = blank)
} else {
  No |>
    cat("\n", sep = blank)
}
q("no")