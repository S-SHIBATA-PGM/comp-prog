con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
thirty <- 30
Yes <- "Yes"
No <- "No"
blank <- ""
X <- arr[one] |>
    as.integer()
if (X >= thirty) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")