con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
lt <- "<"
gt <- ">"
eq <- "="
blank <- ""
space <- " "
one <- 1L
two <- 2L
sixteen <- 16L
X <- strsplit(arr[one], split = space)[[one]][one] |>
    strtoi(base = sixteen)
Y <- strsplit(arr[one], split = space)[[one]][two] |>
    strtoi(base = sixteen)
if (X < Y) {
    lt |>
        cat("\n", sep = blank)
} else if (X > Y) {
    gt |>
        cat("\n", sep = blank)
} else {
    eq |>
        cat("\n", sep = blank)
}
q("no")