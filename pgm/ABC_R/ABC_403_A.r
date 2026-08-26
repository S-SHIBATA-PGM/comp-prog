con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
N <- arr[one] |>
  as.integer()
A <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
sum(A[seq(from = one, to = N, by = two)]) |>
  cat(yn, sep = blank)
q("no")