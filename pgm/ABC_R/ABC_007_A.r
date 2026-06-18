con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1
n <- arr[one] |>
  as.integer()
(n - one) |>
  cat("\n", sep = blank)
q("no")