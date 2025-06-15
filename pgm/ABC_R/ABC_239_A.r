con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
additional <- 12800000 |>
    as.double()
H <- arr[1] |>
    as.double()
sqrt(H * (additional + H)) |>
    sprintf(fmt = "%.9f") |>
    cat("\n", sep = "")
q("no")