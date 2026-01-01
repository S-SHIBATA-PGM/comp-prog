con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
one <- 1
blank <- ""
S <- strsplit(arr[one], split = blank)[[one]]
t <- table(S)
if (one < t |>
        length()) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")