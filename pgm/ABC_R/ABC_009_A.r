con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1
two <- 2
N <- arr[one] |>
  as.integer()
(N + one) %/% two |>
  cat("\n", sep = blank)
q("no")