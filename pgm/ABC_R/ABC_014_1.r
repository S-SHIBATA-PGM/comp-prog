con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
a <- arr[one] |>
  as.integer()
b <- arr[two] |>
  as.integer()
(b - a %% b) %% b |>
  cat("\n", sep = blank)
q("no")