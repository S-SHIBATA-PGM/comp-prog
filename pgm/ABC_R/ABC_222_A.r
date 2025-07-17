con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
N |>
    sprintf(fmt = "%04d") |>
    cat("\n", sep = "")
q("no")