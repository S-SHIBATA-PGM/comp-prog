con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
zero <- 0
blank <- ""
x <- arr[one] |>
    as.integer()
max(zero, x) |>
    cat("\n", sep = blank)
q("no")