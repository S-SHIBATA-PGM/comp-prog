con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
additional <- 0.5
X <- arr[1] |>
    as.numeric()
X <- X + additional
floor(X) |>
    cat("\n", sep = "")
q("no")