con <- file(description = "stdin", open = "r")
N <- readLines(con = con) |>
    as.integer()
close(con)
rep(N, N) |>
    cat("\n", sep = "")