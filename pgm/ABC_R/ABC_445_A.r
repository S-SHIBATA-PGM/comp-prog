con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
yn <- "\n"
one <- 1L
S <- arr[one]
if (substring(S, one, one) == substring(S, nchar(S), nchar(S))) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")