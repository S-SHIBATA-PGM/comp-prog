con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
S <- arr[2]
substr(S, N, N) |>
    cat("\n", sep = "")
q("no")