con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = character(), quiet = TRUE)
close(con)
s_zero <- "0"
blank <- ""
yn <- "\n"
c_zero <- utf8ToInt(s_zero)
one <- 1L
ten <- 10L
zero <- 0L
token_idx <- one
N <- token[token_idx] |>
  as.integer()
token_idx <- token_idx + one
M <- token[token_idx] |>
  as.integer()
token_idx <- token_idx + one
S <- token[token_idx]
token_idx <- token_idx + one
t <- token[token_idx]
s_vec <- utf8ToInt(S) - c_zero
t_vec <- utf8ToInt(t) - c_zero
min_val <- .Machine$integer.max
for (i in zero:(N - M)) {
  curr_val <- zero
  for (j in zero:(M - one)) {
    s_idx <- i + j + one
    t_idx <- j + one
    s_val <- s_vec[s_idx]
    t_val <- t_vec[t_idx]
    diff <- (s_val - t_val + ten) %% ten
    curr_val <- curr_val + diff
  }
  if (curr_val < min_val) {
    min_val <- curr_val
  }
}
min_val |>
  cat(yn, sep = blank)
q("no")