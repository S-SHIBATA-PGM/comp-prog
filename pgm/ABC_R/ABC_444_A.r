con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
yn <- "\n"
one <- 1L
N <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]]
if (length(table(N)) == one) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")