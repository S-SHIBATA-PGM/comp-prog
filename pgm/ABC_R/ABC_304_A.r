con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
S <- c()
A <- c()
for (i in seq_len(N)) {
    S <- append(S, strsplit(arr[i + 1], split = " ")[[1]][1])
    A <- append(A,
        strsplit(arr[i + 1], split = " ")[[1]][2] |>
            as.integer())
}
min <- min(A)
idx <- which(A == min)[1]
for (i in seq_along(S)) {
    S[(i + idx - 2) %% N + 1] |>
        cat("\n", sep = "")
}
q("no")