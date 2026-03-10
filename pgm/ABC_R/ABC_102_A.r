con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
blank <- ""
N <- arr[one] |>
    as.integer()
if (N %% two) {
    (N * two) |>
        cat("\n", sep = blank)
} else {
    N |>
        cat("\n", sep = blank)
}
q("no")