con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
mod <- 10
a <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
b <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
prv <- (a - 1) %% mod
nxt <- (a + 1) %% mod
if (prv == 0) {
    prv <- prv + mod
}
if (nxt == 0) {
    nxt <- nxt + mod
}
if (b == prv || b == nxt) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")