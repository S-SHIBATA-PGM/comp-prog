con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- strsplit(arr[1], split = " ")[[1]] |>
    as.integer()
Yes <- "Yes"
No <- "No"
lower <- 100
upper <- 675
multiple <- 25
len <- length(S)
if (sum(S == sort(S)) == len
    && sum(lower <= S & S <= upper) == len
    && sum(S %% 25 == 0) == len) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")