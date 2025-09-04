con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
x <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
y <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
if (x == y) {
    x |>
        cat("\n", sep = "")
} else {
    (three - x - y) |>
        cat("\n", sep = "")
}
q("no")