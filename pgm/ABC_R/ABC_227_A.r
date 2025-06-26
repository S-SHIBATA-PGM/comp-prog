con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
zero <- 0
one <- 1
N <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
K <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
A <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
if ((K + A - one) %% N == zero) {
    N |>
        cat("\n", sep = "")
} else {
    (K + A - one) %% N |>
        cat("\n", sep = "")
}
q("no")