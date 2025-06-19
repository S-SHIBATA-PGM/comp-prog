f <- function(x) {
    return(x ^ 2 + 2 * x + 3)
}
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
t <- arr[1] |>
    as.integer()
f(f(f(t) + t) + f(f(t))) |>
    cat("\n", sep = "")
q("no")