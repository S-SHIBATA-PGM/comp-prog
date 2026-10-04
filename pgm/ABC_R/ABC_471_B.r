con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
N <- arr[one] |>
  as.integer()
S <- arr[two:(N + one)]
S |>
  tolower() |>
  table() |>
  max() |>
  cat(yn, sep = blank)
q("no")