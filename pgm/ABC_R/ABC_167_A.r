con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
one <- 1
two <- 2
blank <- ""
S <- arr[one]
t <- arr[two]
if (startsWith(t, S)) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")