con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = character(), quiet = TRUE)
close(con)
blank <- ""
space <- " "
yn <- "\n"
c_one <- "1"
c_zero <- "0"
one <- 1L
zero <- 0L
token_idx <- one
N <- token[token_idx] |>
  as.integer()
token_idx <- token_idx + one
M <- token[token_idx] |>
  as.integer()
token_idx <- token_idx + one
S <- token[token_idx:(token_idx + N - one)]
chars_vec <- S |>
  strsplit(split = blank) |>
  unlist()
grid_mat  <- chars_vec |>
  matrix(nrow = N, ncol = M, byrow = TRUE)
score_vec <- N |>
  integer()
for (j in seq_len(M)) {
  col_vec <- grid_mat[, j]
  x <- sum(col_vec == c_zero)
  y <- N - x
  if (x == zero || y == zero) {
    score_vec <- score_vec + one
  } else if (x < y) {
    is_zero <- (col_vec == c_zero)
    score_vec[is_zero] <- score_vec[is_zero] + one
  } else if (y < x) {
    is_one <- (col_vec == c_one)
    score_vec[is_one] <- score_vec[is_one] + one
  }
}
which(score_vec == max(score_vec)) |>
  paste(collapse = space) |>
  cat(yn, sep = blank)
q("no")