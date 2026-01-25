con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
ten <- 10L
zero <- 0L
blank <- ""
space <- " "
X <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
A <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if (A <= X) {
    ten |>
        cat("\n", sep = blank)
} else {
    zero |>
        cat("\n", sep = blank)
}
q("no")