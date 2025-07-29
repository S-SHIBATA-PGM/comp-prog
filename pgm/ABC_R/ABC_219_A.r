con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
expert <- "expert"
one <- 1
upper <- 90
rank <- c(0, 40, 70, upper)
pre <- 0
X <- arr[one] |>
    as.integer()
for (i in length(rank):one) {
    if (X < upper) {
        if (X >= rank[i]) {
            (pre - X) |>
                cat("\n", sep = "")
            break
        }
    } else {
        expert |>
            cat("\n", sep = "")
        break
    }
    pre <- rank[i]
}
q("no")