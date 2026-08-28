con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
lbrack <- "["
rbrack <- "]"
caret <- "^"
hypen <- "-"
A <- "A"
Z <- "Z"
fmt <- paste0(lbrack, caret, A, hypen, Z, rbrack)
S <- arr[one]
gsub(pattern = fmt, replacement = blank, x = S) |>
  cat(yn, sep = blank)
q("no")