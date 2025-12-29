con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
blank <- ""
R <- arr[one] |>
    as.integer()
(R * two * pi) |>
    cat("\n", sep = blank)
q("no")