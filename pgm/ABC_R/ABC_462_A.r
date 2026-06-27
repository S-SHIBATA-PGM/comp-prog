con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
pattern <- "[0-9]"
blank <- ""
one <- 1L
S <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]]
S[grepl(pattern = pattern, x = S)] |>
  paste(collapse = blank) |>
  cat("\n", sep = blank)
q("no")