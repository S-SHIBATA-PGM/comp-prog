con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
seq(from = N, to = 0, by = -1) |>
    cat(sep = "\n")
q("no")