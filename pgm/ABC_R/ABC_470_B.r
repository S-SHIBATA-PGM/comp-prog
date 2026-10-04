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
C <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
mx <- C |>
  table() |>
  max()
(N - mx) |>
  cat(yn, sep = blank)
q("no")