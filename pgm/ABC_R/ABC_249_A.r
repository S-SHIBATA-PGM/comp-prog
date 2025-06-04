con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Takahashi <- "Takahashi"
Aoki <- "Aoki"
Draw <- "Draw"
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
C <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
D <- strsplit(arr[1], split = " ")[[1]][4] |>
    as.integer()
E <- strsplit(arr[1], split = " ")[[1]][5] |>
    as.integer()
f <- strsplit(arr[1], split = " ")[[1]][6] |>
    as.integer()
X <- strsplit(arr[1], split = " ")[[1]][7] |>
    as.integer()
takahashi_distance <- B * A * (X %/% (A + C)) + B * min(A, X %% (A + C))
aoki_distance <- E * D * (X %/% (D + f)) + E * min(D, X %% (D + f))
if (takahashi_distance > aoki_distance) {
    Takahashi |>
        cat("\n", sep = "")
} else if (takahashi_distance < aoki_distance) {
    Aoki |>
        cat("\n", sep = "")
} else {
    Draw |>
        cat("\n", sep = "")
}
q("no")