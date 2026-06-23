con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1
two <- 2
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
Y <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
max(X, Y) |>
  cat("\n", sep = blank)
q("no")