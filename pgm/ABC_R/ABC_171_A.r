con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- "A"
a <- "a"
one <- 1
blank <- ""
alpha <- arr[one]
if (toupper(alpha) == alpha) {
    A |>
        cat("\n", sep = blank)
} else {
    a |>
        cat("\n", sep = blank)
}
q("no")