con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
comma <- ","
blank <- ""
one <- 1L
N <- arr[one] |>
  as.integer()
vec <- N:one
paste(vec, collapse = comma) |>
  cat("\n", sep = blank)
q("no")