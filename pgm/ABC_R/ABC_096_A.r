con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
a <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
b <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if (a <= b) {
    a |>
        cat("\n", sep = blank)
} else {
    (a - one) |>
        cat("\n", sep = blank)
}
q("no")