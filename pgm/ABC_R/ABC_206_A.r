con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
high <- ":("
price <- 206
soso <- "so-so"
tax <- 1.08
yay <- "Yay!"
N <- arr[1] |>
    as.numeric()
amount <- floor(N * tax)
if (amount > price) {
    high |>
        cat("\n", sep = "")
} else if (amount < price) {
    yay |>
        cat("\n", sep = "")
} else {
    soso |>
        cat("\n", sep = "")
}
q("no")