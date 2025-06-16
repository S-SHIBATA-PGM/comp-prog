con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
two <- 2
Yes <- "Yes"
No <- "No"
n <- arr[1] |>
    as.integer()
if (two^n > n^two) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")