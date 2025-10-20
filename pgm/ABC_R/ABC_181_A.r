con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
White <- "White"
Black <- "Black"
blank <- ""
N <- arr[one] |>
    as.integer()
if (N %% two) {
    Black |>
        cat("\n", sep = blank)
} else {
    White |>
        cat("\n", sep = blank)
}
q("no")