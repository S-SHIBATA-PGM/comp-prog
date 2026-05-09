con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
word <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]]
substr(word, one, one) |>
  paste(collapse = blank) |>
  cat("\n", sep = blank)
q("no")