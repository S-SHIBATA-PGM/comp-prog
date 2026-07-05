con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
caret <- "^"
plus <- "+"
o  <- "o"
blank <- ""
one <- 1L
two <- 2L
S <- arr[two]
pattern <- paste0(caret, o, plus)
sub(pattern = pattern, replacement = blank, x = S) |>
  cat("\n", sep = blank)
q("no")