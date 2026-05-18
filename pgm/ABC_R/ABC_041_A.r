con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
s <- arr[one]
i <- arr[two] |>
  as.integer()
substr(s, i, i) |>
  cat("\n", sep = blank)
q("no")