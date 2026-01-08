con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
bust <- "bust"
win <- "win"
one <- 1L
two <- 2L
three <- 3L
twenty_two <- 22L
A1 <- strsplit(x = arr[one], split = space)[[one]][one] |>
    as.integer()
A2 <- strsplit(x = arr[one], split = space)[[one]][two] |>
    as.integer()
A3 <- strsplit(x = arr[one], split = space)[[one]][three] |>
    as.integer()
if (A1 + A2 + A3 >= twenty_two) {
    bust |>
        cat("\n", sep = blank)
} else {
    win |>
        cat("\n", sep = blank)
}
q("no")