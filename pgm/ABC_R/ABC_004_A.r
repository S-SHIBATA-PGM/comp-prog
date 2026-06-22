con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
(two * N) |>
  cat("\n", sep = blank)
q("no")