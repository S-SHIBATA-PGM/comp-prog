con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
three <- 3L
a <- arr[one] |>
  as.integer()
b <- arr[two] |>
  as.integer()
h <- arr[three] |>
  as.integer()
((a + b) * h / two) |>
  cat("\n", sep = blank)
q("no")