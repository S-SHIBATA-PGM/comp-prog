con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
N <- arr[one] |>
  as.integer()
(two ^ N - N * two) |>
  cat(yn, sep = blank)
q("no")