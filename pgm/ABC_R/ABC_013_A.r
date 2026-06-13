con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
X <- arr[one]
match(X, LETTERS) |>
  cat("\n", sep = blank)
q("no")