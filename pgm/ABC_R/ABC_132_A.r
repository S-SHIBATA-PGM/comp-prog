con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
Yes <- "Yes"
No <- "No"
blank <- ""
S <- strsplit(arr[one], split = blank)[[one]]
if (all(table(S) == two)) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")