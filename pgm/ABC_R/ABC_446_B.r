con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
N <- token[one]
M <- token[two]
juice_vec <- rep(TRUE, M)
token_idx <- two
for (i in seq_len(N)) {
  token_idx <- token_idx + one
  L <- token[token_idx]
  drink <- FALSE
  chosen_drink <- zero
  for (j in seq_len(L)) {
    token_idx <- token_idx + one
    X <- token[token_idx] |>
      as.integer()
    idx <- X
    if (juice_vec[idx] && !drink) {
      juice_vec[idx] <- FALSE
      drink <- TRUE
      chosen_drink <- X
    }
  }
  if (drink) {
    chosen_drink |>
      cat(yn, sep = blank)
  } else {
    zero |>
      cat(yn, sep = blank)
  }
}
q("no")