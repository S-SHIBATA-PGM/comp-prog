con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
P <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
max <- max(P)
cnt <- sum(P == max)
if (P[1] != max || (P[1] == max && cnt > 1)) {
    (max - P[1] + 1) |>
        cat("\n", sep = "")
} else {
    0 |>
        cat("\n", sep = "")
}
q("no")