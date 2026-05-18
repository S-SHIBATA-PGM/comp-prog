con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
n <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
x <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
min(x - one, n - x) |>
  cat("\n", sep = blank)
q("no")