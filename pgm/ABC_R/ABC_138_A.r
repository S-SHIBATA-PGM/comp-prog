con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
red <- "red"
one <- 1L
two <- 2L
three_thousand_two_hundred <- 3200L
blank <- ""
a <- arr[one] |>
    as.integer()
s <- arr[two]
if (a >= three_thousand_two_hundred) {
    s |>
        cat("\n", sep = blank)
} else {
    red |>
        cat("\n", sep = blank)
}
q("no")