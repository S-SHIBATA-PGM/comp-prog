con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
divisor <- 100
one <- 1
X <- arr[one] |>
    as.integer()
(divisor - X %% divisor) |>
    cat("\n", sep = "")
q("no")