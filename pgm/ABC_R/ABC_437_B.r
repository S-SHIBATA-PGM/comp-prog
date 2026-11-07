con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
token_idx <- one
H <- token[token_idx]
token_idx <- token_idx + one
W <- token[token_idx]
token_idx <- token_idx + one
N <- token[token_idx]
token_idx <- token_idx + one
A <- token[token_idx:(token_idx + H * W - one)]
a_mat <- matrix(A, nrow = H, ncol = W, byrow = TRUE)
token_idx <- token_idx + H * W
B <- token[token_idx:(token_idx + N - one)]
max_val <- -.Machine$integer.max
for (i in seq_len(H)) {
  row_vec <- a_mat[i, ]
  cnt_val <- sum(row_vec %in% B)
  if (max_val < cnt_val) {
    max_val <- cnt_val
  }
}
max_val |>
  cat(yn, sep = blank)
q("no")