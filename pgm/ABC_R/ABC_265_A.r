con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
three <- 3
X <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
Y <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
N <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
if (X * three < Y) {
    (X * N) |>
        cat("\n", sep = "")
} else {
    (X * (N %% three) + Y * (N %/% three)) |>
        cat("\n", sep = "")
}
q("no")