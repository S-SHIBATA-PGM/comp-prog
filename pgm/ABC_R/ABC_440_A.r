con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
Y <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
(X * two ^ Y) |>
  cat(yn, sep = blank)
q("no")