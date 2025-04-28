con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
M <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
P <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
if (M <= N)  {
    length(seq(from = M, to = N, by = P)) |>
        cat()
} else {
    0 |>
        cat()
}
cat("\n")
q("no")