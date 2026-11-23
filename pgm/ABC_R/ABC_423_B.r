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
L <-token[token_idx:(token_idx + N - one)]
lock_indices <- which(L == one)
if (length(lock_indices) == zero) {
  from_idx <- -one
  to_idx   <- -one
} else {
  from_idx <- lock_indices[one]
  to_idx   <- lock_indices[length(lock_indices)]
}
(to_idx - from_idx) |>
  cat(yn, sep = blank)
q("no")