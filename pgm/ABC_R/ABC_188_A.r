con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
Yes <- "Yes"
No <- "No"
X <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
Y <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
if (max(X, Y) < min(X, Y) + three) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")