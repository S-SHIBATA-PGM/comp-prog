con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
r <- arr[one] |>
    as.integer()
r ^ two |>
    cat("\n", sep = blank)
q("no")