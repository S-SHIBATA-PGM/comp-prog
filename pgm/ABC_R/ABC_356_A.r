con <- file(description = "stdin", open = "r")
NLR <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
N <- NLR[1]
L <- NLR[2]
R <- NLR[3]
A <- c(
    seq(1,
        max(1, L - 1),
        length = ifelse(1 != L,
            max(1, L - 1),
            0)),
    rev(
        seq(L,
            R,
            length = ifelse(L != R, R - L + 1, 1))),
    seq(min(R + 1, N),
        N,
        length = ifelse(R != N,
            N - min(R + 1, N) + 1,
            0))
)
A |>
    cat(sep = " ")
cat("\n")