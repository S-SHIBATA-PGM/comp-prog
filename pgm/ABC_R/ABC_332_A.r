con <- file(description = "stdin", open = "r")
NSK <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
N <- NSK[1]
S <- NSK[2]
K <- NSK[3]
P <- c()
Q <- c()
for (i in 1 : N) {
    PQ <- readLines(con = con, n = 1) |>
        strsplit(split = " ") |>
        unlist() |>
        as.integer()
    P <- append(P, PQ[1])
    Q <- append(Q, PQ[2])
}
close(con)
ifelse(sum(P * Q) >= S, sum(P * Q), sum(P * Q) + K) |>
    cat("\n", sep = "")