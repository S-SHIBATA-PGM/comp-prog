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
L <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
left <- L |>
  cumsum()
(two * left[one:(N - one)] - left[N]) |>
  abs() |>
  min() |>
  cat(yn, sep = blank)
q("no")