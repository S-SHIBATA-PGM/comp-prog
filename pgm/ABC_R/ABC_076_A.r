con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
R <- arr[one] |>
    as.integer()
G <- arr[two] |>
    as.integer()
(two * G - R) |>
    cat("\n", sep = blank)
q("no")