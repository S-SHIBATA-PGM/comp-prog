con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- "A"
B <- "B"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
x <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
a <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
    as.integer()
b <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
    as.integer()
if (abs(x = x - a) < abs(x = x - b)) {
    A |>
        cat("\n", sep = blank)
} else {
    B |>
        cat("\n", sep = blank)
}
q("no")