con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
P <- arr[one]
L <- arr[two] |>
  as.integer()
if (nchar(P) >= L) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")