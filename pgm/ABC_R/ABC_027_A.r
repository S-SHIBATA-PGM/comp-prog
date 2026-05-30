con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
l1 <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
l2 <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
l3 <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
bitwXor(bitwXor(l1, l2), l3) |>
  cat("\n", sep = blank)
q("no")