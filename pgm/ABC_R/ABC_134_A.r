con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
three <- 3L
blank <- ""
r <- arr[one] |>
    as.integer()
(three * r ^ two) |>
    cat("\n", sep = blank)
q("no")