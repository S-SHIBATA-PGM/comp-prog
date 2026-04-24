con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Possible <- "Possible"
Impossible <- "Impossible"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
    as.integer()
if (A %% three && B %% three && (A + B) %% three) {
    Impossible |>
        cat("\n", sep = blank)
} else {
    Possible |>
        cat("\n", sep = blank)
}
q("no")