con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
delicious <- "delicious"
safe <- "safe"
dangerous <- "dangerous"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
zero <- 0L
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
    as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
    as.integer()
if (B - A <= zero) {
    delicious |>
        cat("\n", sep = blank)
} else if (B - A <= X) {
    safe |>
        cat("\n", sep = blank)
} else {
    dangerous |>
        cat("\n", sep = blank)
}
q("no")