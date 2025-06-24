con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
sharp <- "#"
Yes <- "Yes"
No <- "No"
S1 <- strsplit(arr[1], split = "")[[1]]
S2 <- strsplit(arr[2], split = "")[[1]]
if (S1[1] == sharp
    && S1[2] != sharp
    && S2[1] != sharp
    && S2[2] == sharp) {
    No |>
        cat("\n", sep = "")
} else if (S1[1] != sharp
    && S1[2] == sharp
    && S2[1] == sharp
    && S2[2] != sharp) {
    No |>
        cat("\n", sep = "")
} else {
    Yes |>
        cat("\n", sep = "")
}
q("no")