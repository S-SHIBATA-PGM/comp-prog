con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
S <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
t <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
(t - S + one) |>
  cat("\n", sep = blank)
q("no")