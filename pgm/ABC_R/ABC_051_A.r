con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
comma <- ","
space <- " "
one <- 1L
s <- arr[one]
gsub(comma, space, s) |>
  cat("\n", sep = blank)
q("no")