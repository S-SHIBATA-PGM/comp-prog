con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
error <- "error"
blank <- ""
space <- " "
one <- 1L
two <- 2L
ten <- 10L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
    as.integer()
if (A + B < ten) {
    (A + B) |>
        cat("\n", sep = blank)
} else {
    error |>
        cat("\n", sep = blank)
}
q("no")