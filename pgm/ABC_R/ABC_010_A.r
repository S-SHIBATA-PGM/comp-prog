con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
pp <- "pp"
blank <- ""
one <- 1L
S <- arr[one]
paste0(S, pp) |>
  cat("\n", sep = blank)
q("no")