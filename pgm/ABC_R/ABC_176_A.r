options(scipen = 10)
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
zero <- 0
blank <- ""
space <- " "
N <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
X <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
t <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
if (N %% X > zero) {
    ((N %/% X + one) * t) |>
        cat("\n", sep = blank)
} else {
    (N %/% X * t) |>
        cat("\n", sep = blank)
}
q("no")