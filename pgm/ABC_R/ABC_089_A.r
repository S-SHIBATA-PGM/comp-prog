con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
three <- 3L
N <- arr[one] |>
    as.integer()
(N %/% three) |>
    cat("\n", sep = blank)
q("no")