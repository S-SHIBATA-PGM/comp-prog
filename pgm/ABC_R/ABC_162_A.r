con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
seven <- "7"
Yes <- "Yes"
No <- "No"
one <- 1
zero <- 0
blank <- ""
N <- arr[one]
if (grepl(pattern = seven, x = N)) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")