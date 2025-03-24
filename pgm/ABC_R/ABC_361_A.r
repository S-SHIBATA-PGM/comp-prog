con <- file(description = "stdin", open = "r")
NKX <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
A <- readLines(con = con, n = NKX[1]) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
N <- NKX[1]
K <- NKX[2]
X <- NKX[3]
append(A, X, after = K) |>
    cat(sep = " ")
cat("\n")