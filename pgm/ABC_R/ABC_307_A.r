options(scipen = 1)
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
A <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
zero <- 0
seven <- 7
sum <- 0
j <- 1
nxt <- 1
ans <- c()
for (i in 1:N) {
    nxt <- j + seven
    while (j < nxt) {
        sum <- sum + A[j]
        j <- j + 1
    }
    ans <- append(ans, sum)
    sum <- zero
}
ans |>
    cat()
cat("\n")
q("no")