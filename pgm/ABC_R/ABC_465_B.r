con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
space <- " "
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
four <- 4L
five <- 5L
six <- 6L
twenty_four <- 24L
token <- unlist(strsplit(x = arr, split = space, fixed = TRUE)) |>
  Filter(f = nzchar)
X <- as.integer(token[one])
Y <- as.integer(token[two])
L <- as.integer(token[three])
R <- as.integer(token[four])
A <- as.integer(token[five])
B <- as.integer(token[six])
rate <- rep(Y, twenty_four)
if (L < R) {
  indice <- (L + one):R
  rate[indice] <- X
}
rate[(A + one):B] |>
  sum() |>
  cat(yn, sep = blank)
q("no")