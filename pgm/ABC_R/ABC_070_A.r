con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1L
ten <- 10L
zero <- 0L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
reverse <- zero
number <- N
while (number != zero) {
    reverse <- reverse * ten + (number %% ten)
    number <- number %/% ten
}
if (N == reverse) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")