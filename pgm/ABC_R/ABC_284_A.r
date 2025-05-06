con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
S <- c()
for (i in seq_len(N)) {
    S <- append(arr[i + 1], S)
}
for (i in seq_len(N)) {
    S[i] |>
        cat("\n", sep = "")
}
q("no")