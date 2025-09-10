con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
Yes <- "Yes"
No <- "No"
A <- strsplit(arr[one], split = " ")[[one]] |>
    as.integer()
A <- A |>
    sort()
if (A[two] - A[one] == A[three] - A[two]) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")