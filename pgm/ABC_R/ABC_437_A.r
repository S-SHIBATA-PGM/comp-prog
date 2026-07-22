con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
twelve <- 12L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
(twelve * A + B) |>
  cat(yn, sep = blank)
q("no")