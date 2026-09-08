con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
N <- arr[one] |>
  as.integer()
X <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
if (all(X < zero)) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")