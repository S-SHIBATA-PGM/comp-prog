con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
S <- strsplit(arr[1], split = " ")[[1]] |>
    as.integer()
if (all(S == sort(S) & S >= 100 & S <= 675 & S %% 25 == 0)) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")