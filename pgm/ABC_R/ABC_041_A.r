con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1
two <- 2
s <- arr[one]
i <- arr[two] |>
  as.integer()
substr(s, i, i) |>
  cat("\n", sep = blank)
q("no")