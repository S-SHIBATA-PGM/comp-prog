con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
two <- 2
N <- arr[1] |>
    as.integer()
2 ^ N |>
    cat("\n", sep = "")
q("no")