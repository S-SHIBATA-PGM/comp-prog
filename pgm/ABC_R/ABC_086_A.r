con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Odd <- "Odd"
Even <- "Even"
blank <- ""
space <- " "
one <- 1L
two <- 2L
a <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
b <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if ((a * b) %% two) {
    Odd |>
        cat("\n", sep = blank)
} else {
    Even |>
        cat("\n", sep = blank)
}
q("no")