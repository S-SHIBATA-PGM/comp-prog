con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
    as.integer()
C <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
    as.integer()
if (A <= C && C <= B) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")