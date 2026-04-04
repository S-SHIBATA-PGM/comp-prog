con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Left <- "Left"
Balanced <- "Balanced"
Right <- "Right"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
four <- 4L
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
C <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
D <- strsplit(arr[one], split = space)[[one]][four] |>
    as.integer()
if (A + B > C + D) {
    Left |>
        cat("\n", sep = blank)
} else if (A + B < C + D) {
    Right |>
        cat("\n", sep = blank)
} else {
    Balanced |>
        cat("\n", sep = blank)
}
q("no")