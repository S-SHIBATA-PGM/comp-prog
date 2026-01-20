con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
IMPOSSIBLE <- "IMPOSSIBLE"
one <- 1L
two <- 2L
blank <- ""
space <- " "
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if ((A + B) %% two == 0) {
    ((A + B) / two) |>
        cat("\n", sep = blank)
} else {
    IMPOSSIBLE |>
        cat("\n", sep = blank)
}
q("no")