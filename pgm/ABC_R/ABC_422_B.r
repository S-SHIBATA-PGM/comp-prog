con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = character(), quiet = TRUE)
close(con)
Yes <- "Yes"
No <- "No"
sharp <- "#"
period <- "."
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
four <- 4L
zero <- 0L
token_idx <- one
H <- token[token_idx] |>
  as.integer()
token_idx <- token_idx + one
W <- token[token_idx] |>
  as.integer()
token_idx <- token_idx + one
S <- token[token_idx:(token_idx + H - one)]
char_vec <- strsplit(S, split = blank) |>
  unlist()
grid_mat <- char_vec |>
  matrix(nrow = H, ncol = W, byrow = TRUE)
pad_mat <- matrix(period, nrow = H + two, ncol = W + two)
pad_mat[(one + one):(H + one), (one + one):(W + one)] <- grid_mat
r_idx <- (one + one):(H + one)
c_idx <- (one + one):(W + one)
up_mat    <- (pad_mat[r_idx - one, c_idx, drop = FALSE] == sharp)
down_mat  <- (pad_mat[r_idx + one, c_idx, drop = FALSE] == sharp)
left_mat  <- (pad_mat[r_idx, c_idx - one, drop = FALSE] == sharp)
right_mat <- (pad_mat[r_idx, c_idx + one, drop = FALSE] == sharp)
adj_cnt_mat <- up_mat + down_mat + left_mat + right_mat
sharp_cnt_vec <- adj_cnt_mat[grid_mat == sharp]
is_ok <- all(sharp_cnt_vec == two | sharp_cnt_vec == four)
if (is_ok) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")