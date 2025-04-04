con <- file(description = "stdin", open = "r")
A <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
B <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
(sum(A) - sum(B) + 1) |>
    cat("\n", sep = "")