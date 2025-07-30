con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
S <- strsplit(arr[1], split = " ")[[1]][1]
t <- strsplit(arr[1], split = " ")[[1]][2]
if (S < t) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")