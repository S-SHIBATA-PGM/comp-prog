con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
SAME <- "SAME"
DIFFERENT <- "DIFFERENT"
blank <- ""
one <- 1L
N <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]]
if (N |>
    table() |>
    length() == one) {
  SAME |>
    cat("\n", sep = blank)
} else {
  DIFFERENT |>
    cat("\n", sep = blank)
}
q("no")