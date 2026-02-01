con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <-  1L
two <-  2L
three <-  3L
blank <- ""
space <- " "
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if (A == B) {
    (two * A) |>
        cat("\n", sep = blank)
} else {
    (two * max(A, B) - one) |>
        cat("\n", sep = blank)
}
q("no")