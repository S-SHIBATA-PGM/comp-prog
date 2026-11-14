con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank  <- ""
yn <- "\n"
one <- 1L
zero <- 0L
token_idx <- one
N <- token[token_idx]
token_idx <- token_idx + one
A <- token[token_idx:(token_idx + N - one)]
tall_vec <- integer(N)
st_vec   <- integer(zero)
for (i in seq_len(N)) {
  i_zero <- i - one
  while (length(st_vec) > zero) {
    top_idx <- st_vec[length(st_vec)]
    if (A[top_idx + one] <= A[i]) {
      st_vec <- st_vec[-length(st_vec)]
    } else {
      break
    }
  }
  if (length(st_vec) == zero) {
    tall_vec[i] <- -one
  } else {
    top_idx <- st_vec[length(st_vec)]
    tall_vec[i] <- top_idx + one
  }
  st_vec <- c(st_vec, i_zero)
  tall_vec[i] |>
    cat(yn, sep = blank)
}
q("no")