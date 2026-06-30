con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
S <- arr[one]
N <- arr[two] |>
  as.integer()
substr(x = S, start = N + one, stop = nchar(S) - N) |>
  cat("\n", sep = blank)
q("no")