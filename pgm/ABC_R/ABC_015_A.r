con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
A <- arr[one]
B <- arr[two]
if (nchar(A) > nchar(B)) {
  A |>
    cat("\n", sep = blank)
} else {
  B |>
    cat("\n", sep = blank)
}
q("no")