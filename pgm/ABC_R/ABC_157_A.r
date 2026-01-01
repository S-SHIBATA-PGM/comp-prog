con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
blank <- ""
N <- arr[one] |>
    as.integer()
ceiling(x = N / two) |>
    cat("\n", sep = blank)
q("no")