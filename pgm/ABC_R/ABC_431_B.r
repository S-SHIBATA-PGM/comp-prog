con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
token_idx <- one
X <- token[token_idx]
token_idx <- token_idx + one
N <- token[token_idx]
token_idx <- token_idx + one
W <- token[token_idx:(token_idx + N - one)]
token_idx <- token_idx + N
Q <- token[token_idx]
token_idx <- token_idx + one
is_mounted <- logical(N)
for (i in seq_len(Q)) {
  P <- token[token_idx]
  token_idx <- token_idx + one
  if (!is_mounted[P]) {
    X <- X + W[P]
  } else {
    X <- X - W[P]
  }
  is_mounted[P] <- !is_mounted[P]
  X |>
    cat(yn, sep = blank)
}
q("no")