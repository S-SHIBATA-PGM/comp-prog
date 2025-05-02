library(bit64)
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer64()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer64()
(A + B - 1) %/% B |>
    format(digits = 19) |>
    cat("\n", sep = "")
q("no")