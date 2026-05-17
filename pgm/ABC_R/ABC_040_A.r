con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1
two <- 2
n <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
x <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
min(x - one, n - x) |>
  cat("\n", sep = blank)
q("no")