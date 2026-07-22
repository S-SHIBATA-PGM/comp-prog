con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
seven <- 7L
D <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
f <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
((f + seven * ((D - f) %/% seven + one) - one) %% D + one) |>
  cat(yn, sep = blank)
q("no")