con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- utf8ToInt("A")
N <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
X <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
(A + (X - 1) %/% N) |>
    as.raw() |>
    rawToChar() |>
    cat("\n", sep = "")
q("no")