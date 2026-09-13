con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
X <- arr[one] |>
  as.integer()
candidate <- c(one, two, three)
candidate[candidate != X][one] |>
  cat(yn, sep = blank)
q("no")