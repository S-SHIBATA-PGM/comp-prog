con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
four <- 4L
zero <- 0L
N <- arr[one] |>
  as.integer()
K <- arr[two] |>
  as.integer()
X <- arr[three] |>
  as.integer()
Y <- arr[four] |>
  as.integer()
(X * min(N, K) + max(zero, Y * (N - K))) |>
  cat("\n", sep = blank)
q("no")