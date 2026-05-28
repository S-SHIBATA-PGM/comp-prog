con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
s <- "s"
blank <- ""
one <- 1L
W <- arr[one]
paste0(W, s) |>
  cat("\n", sep = blank)
q("no")