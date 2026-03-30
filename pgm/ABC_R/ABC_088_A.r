con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1L
two <- 2L
five_hundred <- 500L
N <- arr[one] |>
    as.integer()
A <- arr[two] |>
    as.integer()
if (N %% five_hundred <= A) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")