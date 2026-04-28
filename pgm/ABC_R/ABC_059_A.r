con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
s <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]]
substr(s, one, one) |>
  toupper() |>
  paste0() |>
  cat("\n", sep = blank)
q("no")