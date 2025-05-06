con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
K <- arr[1] |>
    as.integer()
A <- utf8ToInt("A")
for (i in seq_len(K)) {
    (A + i - 1) |>
        as.raw() |>
        rawToChar() |>
        cat()
}
cat("\n", sep = "")
q("no")