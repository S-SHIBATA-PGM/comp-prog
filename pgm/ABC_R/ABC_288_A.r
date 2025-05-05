con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
A <- c()
B <- c()
for (i in seq_len(N)) {
    AB <- strsplit(arr[i + 1], split = " ")[[1]]
    A <- append(A, AB[1] |>
            as.integer())
    B <- append(B, AB[2] |>
            as.integer())
}
a_plus_b <- A + B
for (i in seq_len(N)) {
    a_plus_b[i] |>
        cat("\n", sep = "")
}
q("no")