con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
one <- 1
zero <- 0
if (zero < N - 1) {
    (N - 1) |>
        cat("\n", sep = "")
} else {
    zero |>
        cat("\n", sep = "")
}
q("no")