con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank  <- ""
period <- "."
yn <- "\n"
one <- 1L
ten <- 10L
twenty <- 20L
token_idx <- one
N <- token[token_idx]
token_idx <- token_idx + one
M <- token[token_idx]
token_idx <- token_idx + one
A <- integer(M)
B <- integer(M)
for (i in seq_len(N)) {
  a <- token[token_idx]
  token_idx <- token_idx + one
  b <- token[token_idx]
  token_idx <- token_idx + one
  A[a] <- A[a] + one
  B[a]  <- B[a] + b
}
for (i in seq_len(M)) {
  a <- A[i]
  b <- B[i]
  qt  <- b %/% a
  rem <- b %% a
  qt |>
    cat(sep = blank)
  period |>
    cat(sep = blank)
  for (k in seq_len(twenty)) {
    rem <- rem * ten
    digit <- rem %/% a
    rem <- rem %% a
    digit |>
      cat(sep = blank)
  }
  yn |>
    cat(sep = blank)
}
q("no")