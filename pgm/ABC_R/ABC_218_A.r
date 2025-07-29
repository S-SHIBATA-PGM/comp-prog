con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
circle <- "o"
Yes <- "Yes"
No <- "No"
N <- arr[1] |>
    as.integer()
S <- arr[2]
if (substr(S, N, N) == circle) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")