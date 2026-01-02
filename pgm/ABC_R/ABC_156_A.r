con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
ten <- 10L
hundred <- 100L
one <- 1L
two <- 2L
blank <- ""
space <- " "
N <- strsplit(x = arr[one], split = space)[[one]][one] |>
    as.integer()
R <- strsplit(x = arr[one], split = space)[[one]][two] |>
    as.integer()
if (ten <= N) {
    R |>
        cat("\n", sep = blank)
} else {
    (R + hundred * (ten - N)) |>
        cat("\n", sep = blank)
}
q("no")