con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
For <- "For"
Yes <- "Yes"
No <- "No"
N <- arr[1] |>
    as.integer()
most <- (N + 1) %/% 2
S <- c()
for (i in seq_len(N)) {
    S <- append(S, arr[i + 1])
}
if (sum(S == For) >= most) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")