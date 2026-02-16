con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
hello_world <- "Hello World"
blank <- ""
N <- arr[one] |>
    as.integer()
if (N == one) {
    hello_world |>
        cat("\n", sep = blank)
} else {
    A <- arr[two] |>
        as.integer()
    B <- arr[three] |>
        as.integer()
    (A + B) |>
        cat("\n", sep = blank)
}
q("no")