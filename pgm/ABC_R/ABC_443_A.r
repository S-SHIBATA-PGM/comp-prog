con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
s <- "s"
blank <- ""
yn <- "\n"
one <- 1L
S <- arr[one]
paste0(S, s) |>
  cat(yn, sep = blank)
q("no")