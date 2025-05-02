con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
five <- 5
if (five - N %% five < N %% five) {
    (N + five - N %% five) |>
        cat("\n", sep = "")
} else {
    (N - N %% five) |>
        cat("\n", sep = "")
}
q("no")