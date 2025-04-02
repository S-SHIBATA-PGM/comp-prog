con <- file(description = "stdin", open = "r")
NM <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
H <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
N <- NM[1]
M <- NM[2]
sum(cumsum(H) <= M) |>
    cat("\n", sep = "")