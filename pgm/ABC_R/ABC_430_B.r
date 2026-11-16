con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = character(), quiet = TRUE)
close(con)
blank <- ""
yn <- "\n"
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
char_vec <- S |>
  strsplit(split = blank) |>
  unlist()
mat <- char_vec |>
  matrix(nrow = N, ncol = N, byrow = TRUE)
limit_val      <- N - M + one
pattern <- limit_val * limit_val
subgrid_vec   <- character(pattern)
pattern_idx <- one
for (y in seq_len(limit_val)) {
  for (x in seq_len(limit_val)) {
    sub_mat <- mat[x:(x + M - one), y:(y + M - one), drop = FALSE]
    sub_str <- sub_mat |>
      t() |>
      as.vector() |>
      paste(collapse = blank)
    subgrid_vec[pattern_idx] <- sub_str
    pattern_idx <- pattern_idx + one
  }
}
subgrid_vec |>
  unique() |>
  length() |>
  cat(yn, sep = blank)
q("no")