con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
zero <- 0
blank <- ""
space <- " "
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if (B %% A == zero) {
    (A + B) |>
        cat("\n", sep = blank)
} else {
    (B - A) |>
        cat("\n", sep = blank)
}
q("no")