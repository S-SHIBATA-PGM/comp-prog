con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
o <- "o"
blank <- ""
yn <- "\n"
one <- 1L
strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]] |>
  paste(collapse = o) |>
  cat(yn, sep = blank)
q("no")