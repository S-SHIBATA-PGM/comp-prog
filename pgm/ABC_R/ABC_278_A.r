con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
zero <- 0
N <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
K <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
A <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
for (i in seq(from = N, to = N - K + 1, by = -1)) {
    A <- append(A, zero)
    A <- A[-1]
}
A |>
    cat()
cat("\n", sep = "")
q("no")