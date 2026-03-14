con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
ABC <- "ABC"
ABD <- "ABD"
blank <- ""
one <- 1L
thousand <- 1000L
N <- arr[one] |>
    as.integer()
if (N < thousand) {
    ABC |>
        cat("\n", sep = blank)
} else {
    ABD |>
        cat("\n", sep = blank)
}
q("no")