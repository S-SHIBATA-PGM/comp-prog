con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
x <- "x"
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
N <- arr[one] |>
  as.integer()
S <- strsplit(x = arr[two], split = blank, fixed = TRUE)[[one]]
left  <- c(TRUE, head(S, N - one) == x)
right <- c(tail(S, N - one) == x, TRUE)
self  <- S == x
(self & left & right) |>
  sum() |>
  cat(yn, sep = blank)
q("no")