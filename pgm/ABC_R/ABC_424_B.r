con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
token_idx <- one
N <- token[token_idx]
token_idx <- token_idx + one
M <- token[token_idx]
token_idx <- token_idx + one
K <- token[token_idx]
token_idx <- token_idx + one
cnt_vec <- integer(N)
sp_str <- blank
for (i in seq_len(K)) {
  A <- token[token_idx]
  token_idx <- token_idx + two
  cnt_vec[A] <- cnt_vec[A] + one
  if (cnt_vec[A] == M) {
    sp_str |>
      cat()
    A |>
      cat()
    sp_str <- space
  }
}
yn |>
  cat()
q("no")