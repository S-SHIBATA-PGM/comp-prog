f <- function(k) {
    if (k == 0) {
        return(1)
    } else {
        return(k * f(k - 1))
    }
}
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
f(N) |>
    cat("\n", sep = "")
q("no")