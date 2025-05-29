con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes";
No <- "No";
abc <- strsplit(arr[1], split = " ")[[1]] |>
    as.integer()
b <- abc[2]
if (b == median(abc)) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")