con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
plus <- "+"
blank <- ""
one <- 1L
zero <- 0L
S <- arr[one]
cnt <- zero
for (i in one:nchar(S)) {
    if (substr(S, start = i, stop = i) == plus) {
        cnt <- cnt + one
    } else {
        cnt <- cnt - one
    }
}
cnt |>
    cat("\n", sep = blank)
q("no")