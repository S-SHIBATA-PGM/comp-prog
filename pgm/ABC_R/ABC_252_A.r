con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
N |>
    as.raw() |>
    rawToChar() |>
    cat("\n", sep = "")
q("no")