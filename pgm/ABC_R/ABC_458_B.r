con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
space <- " "
yn  <- "\n"
one <- 1L
two <- 2L
token <- unlist(strsplit(x = arr, split = space, fixed = TRUE)) |>
  Filter(f = nzchar)
H <- token[one] |>
  as.integer()
W <- token[two] |>
  as.integer()
grid <- expand.grid(y = seq_len(H), x = seq_len(W))
y_vec <- grid$y
x_vec <- grid$x
up <- (y_vec - one >= one)
down <- (y_vec + one <= H)
left <- (x_vec - one >= one)
right <- (x_vec + one <= W)
cnt_vec <- as.integer(up) + as.integer(down) + as.integer(left) +
  as.integer(right)
matrix(cnt_vec, nrow = H, ncol = W, byrow = FALSE) |>
  apply(MARGIN = one, function(row_vals) {
    return(paste(row_vals, collapse = space))
  }) |>
  cat(sep = yn)
q("no")