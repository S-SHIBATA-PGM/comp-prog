con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
N <- arr[one] |>
  as.integer()
A <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
K <- arr[three] |>
  as.integer()
sum(A >= K) |>
  cat(yn, sep = blank)
q("no")