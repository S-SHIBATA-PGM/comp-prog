con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
twenty_four <- 24
S <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
t <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
X <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
if (S > t) {
    t <- t + twenty_four
}
if (S > X) {
    X <- X + twenty_four
}
if (S <= X && X < t) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")