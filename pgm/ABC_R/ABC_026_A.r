con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
A <- arr[one] |>
  as.integer()
(bitwShiftR(A, one) * bitwShiftR(A, one)) |>
  cat("\n", sep = blank)
q("no")