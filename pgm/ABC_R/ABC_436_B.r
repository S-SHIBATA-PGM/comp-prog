con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
N <- token[one]
square <- matrix(zero, nrow = N, ncol = N)
y <- one
x <- (N + one) %/% two
k <- one
square[y, x] <- k
limit <- N * N - one
for (i in seq_len(limit)) {
  k <- k + one
  next_y <- ((y - one - one + N) %% N) + one
  next_x <- ((x - one + one + N) %% N) + one
  if (square[next_y, next_x] == zero) {
    y <- next_y
    x <- next_x
    square[y, x] <- k
  } else {
    y <- ((y - one + one + N) %% N) + one
    square[y, x] <- k
  }
}
for (y in seq_len(N)) {
  row_vec <- square[y, ]
  for (x in seq_len(N)) {
    if (x > one) {
      space |>
        cat(sep = blank)
    }
    row_vec[x] |>
      cat(sep = blank)
  }
  yn |>
    cat(sep = blank)
}
q("no")