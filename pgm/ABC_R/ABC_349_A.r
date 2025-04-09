con <- file(description = "stdin", open = "r")
N <- readLines(con = con, n = 1)
A <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
-sum(A) |>
    cat("\n", sep = "")