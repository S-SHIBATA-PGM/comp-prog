con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
blank <- ""
space <- " "
N <- strsplit(arr[one], split = space)[[one]][one] |>
    as.numeric()
M <- strsplit(arr[one], split = space)[[one]][two] |>
    as.numeric()
(ceiling(N * (N - 1) / 2) + ceiling(M * (M - 1) / 2)) |>
    cat("\n", sep = blank)
q("no")