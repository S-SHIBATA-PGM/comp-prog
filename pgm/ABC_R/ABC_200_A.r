con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
hundred <- 100
zero <- 0
N <- arr[one] |>
    as.integer()
if (N %% hundred > zero) {
    (floor(N / hundred) + one) |>
        cat("\n", sep = "")
} else {
    (N / hundred) |>
        cat("\n", sep = "")
}
q("no")