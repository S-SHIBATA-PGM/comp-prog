con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
fifteen <- 15L
two_hundred <- 200L
eight_hundred <- 800L
N <- arr[one] |>
  as.integer()
(eight_hundred * N - two_hundred * floor(N / fifteen)) |>
  cat("\n", sep = blank)
q("no")