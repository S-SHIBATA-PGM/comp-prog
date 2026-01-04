con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1L
two <- 2L
N <- strsplit(x = arr[one], split = space)[[one]][one] |>
    as.integer()
M <- strsplit(x = arr[one], split = space)[[one]][two] |>
    as.integer()
if (N == M) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")