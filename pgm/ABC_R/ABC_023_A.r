con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
X <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]] |>
  as.integer()
(X[one] + X[two]) |>
  cat("\n", sep = blank)
q("no")