con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1L
two <- 2L
L <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
R <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
(R - L + one) |>
  cat("\n", sep = blank)
q("no")