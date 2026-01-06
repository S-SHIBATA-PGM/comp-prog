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
K <- strsplit(x = arr[one], split = space)[[one]][one] |>
    as.integer()
X <- strsplit(x = arr[one], split = space)[[one]][two] |>
    as.integer()
if (X <= five_hundred * K) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")