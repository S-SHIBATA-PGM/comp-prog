con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
three <- 3L
X <- arr[one] |>
    as.integer()
A <- arr[two] |>
    as.integer()
B <- arr[three] |>
    as.integer()
((X - A) %% B) |>
    cat("\n", sep = blank)
q("no")