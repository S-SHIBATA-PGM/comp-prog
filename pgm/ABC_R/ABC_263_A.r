con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
two <- 2
three <- 3
Yes <- "Yes"
No <- "No"
ABCDE <- strsplit(arr[1], split = " ")[[1]] |>
    as.integer()
tab <- table(ABCDE)
if (sum(tab == three) == 1 && sum(tab == two) == 1) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")