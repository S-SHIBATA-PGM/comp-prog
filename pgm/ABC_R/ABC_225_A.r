con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- strsplit(arr[1], split = "")[[1]]
one <- 1
n <- length(S)
t <- table(S)
divisor <- one
for (i in t) {
    divisor <- divisor * factorial(i)
}
(factorial(n) / divisor) |>
    cat("\n", sep = "")
q("no")