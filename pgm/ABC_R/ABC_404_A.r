con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
S <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]]
letters[!(letters %in% S)][one] |>
  cat(yn, sep = blank)
q("no")