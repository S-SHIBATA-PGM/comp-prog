con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
N <- arr[one] |>
  as.integer()
A <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
X <- arr[three] |>
  as.integer()
A[X] |>
  cat("\n", sep = blank)
q("no")