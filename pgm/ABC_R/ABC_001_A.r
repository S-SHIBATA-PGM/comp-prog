con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
H1 <- arr[one] |>
  as.integer()
H2 <- arr[two] |>
  as.integer()
(H1 - H2) |>
  cat("\n", sep = blank)
q("no")