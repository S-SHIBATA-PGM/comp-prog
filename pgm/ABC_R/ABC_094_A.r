con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
X <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
if (A <= X && X <= A + B) {
    YES |>
        cat("\n", sep = blank)
} else {
    NO |>
        cat("\n", sep = blank)
}
q("no")