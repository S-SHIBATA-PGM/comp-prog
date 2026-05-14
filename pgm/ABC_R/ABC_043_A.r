con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
N <- arr[one] |>
  as.integer()
(N * (one + N) / two) |>
  cat("\n", sep = blank)
q("no")