con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
zero <- 0L
token_idx <- one
N <- token[token_idx]
token_idx <- token_idx + one
A <- token[token_idx:(token_idx + N - one)]
sum_vec <- c(zero, cumsum(A))
cnt <- zero
for (l in seq_len(N)) {
  for (r in l:N) {
    s <- sum_vec[r + one] - sum_vec[l]
    is_valid <- TRUE
    for (i in l:r) {
      a <- A[i]
      if (a != zero && s %% a == zero) {
        is_valid <- FALSE
        break
      }
    }
    if (is_valid) {
      cnt <- cnt + one
    }
  }
}
cnt |>
  cat(yn, sep = blank)
q("no")