con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
blank <- ""
x <- arr[one] |>
    as.integer()
bitwXor(x, one) |>
    cat("\n", sep = blank)
q("no")