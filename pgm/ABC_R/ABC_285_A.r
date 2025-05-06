con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
a <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
b <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
if (a * 2 == b || a * 2 + 1 == b) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")