options(scipen = 10)
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
four <- 4
zero <- 0
N <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
A <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
X <- strsplit(arr[one], split = " ")[[one]][three] |>
    as.integer()
Y <- strsplit(arr[one], split = " ")[[one]][four] |>
    as.integer()
(X * min(N, A) + Y * max(zero, N - A)) |>
    cat("\n", sep = "")
q("no")