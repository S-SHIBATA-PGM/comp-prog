con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
caret <- "^"
dot <- "."
lbrack <- "["
rbrack <- "]"
A <- "A"
blank <- ""
yn <- "\n"
one <- 1L
pattern <- paste0(lbrack, caret, A, rbrack)
S <- arr[one]
gsub(pattern = pattern, replacement = dot, x = S) |>
  cat(yn, sep = blank)
q("no")