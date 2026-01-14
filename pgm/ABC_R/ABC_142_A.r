con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
zero <- 0L
blank <- ""
space <- " "
N <- arr[one] |>
    as.integer()
(floor((N + 1) / 2) / N) |>
    cat("\n", sep = blank)
q("no")