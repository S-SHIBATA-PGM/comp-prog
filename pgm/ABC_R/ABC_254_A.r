con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
sprintf("%02d", N %% 100) |>
    cat("\n", sep = "")
q("no")