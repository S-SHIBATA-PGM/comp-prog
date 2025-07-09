con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
divisor <- 100
zero <- 0
Yes <- "Yes"
No <- "No"
X <- arr[1] |>
    as.integer()
if (X != zero && X %% divisor == zero) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")