con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
abc <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]] |>
  as.integer()
length(table(abc)) |>
  cat("\n", sep = blank)
q("no")