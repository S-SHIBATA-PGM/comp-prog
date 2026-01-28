con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <-  1L
two <-  2L
five <-  5L
twelve <- 12L
zero <- 0L
blank <- ""
space <- " "
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if (A <= five) {
    zero |>
        cat("\n", sep = blank)
} else if (A <= twelve) {
    (B / two) |>
        cat("\n", sep = blank)
} else {
    B |>
        cat("\n", sep = blank)
}
q("no")