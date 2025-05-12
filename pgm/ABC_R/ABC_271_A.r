con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
sprintf("%02X", N) |>
    cat("\n", sep = "")
q("no")