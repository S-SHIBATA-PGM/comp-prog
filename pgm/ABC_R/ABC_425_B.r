con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank <- ""
space <- " "
yn <- "\n"
Yes <- "Yes"
No <- "No"
one <- 1L
token_idx <- one
N <- token[token_idx]
token_idx <- token_idx + one
A <- token[token_idx:(token_idx + N - one)]
P <- rep(TRUE, times = N)
is_found <- TRUE
for (i in seq_len(N)) {
  a_val <- A[i]
  if (a_val != -one) {
    if (!P[a_val]) {
      is_found <- FALSE
      break
    }
    P[a_val] <- FALSE
  }
}
if (!is_found) {
  No |>
    cat(yn, sep = blank)
} else {
  Yes |>
    cat(yn, sep = blank)
  unused_vec <- which(P)
  unused_idx  <- one
  a_vec <- A
  for (i in seq_len(N)) {
    if (a_vec[i] == -one) {
      a_vec[i] <- unused_vec[unused_idx]
      unused_idx <- unused_idx + one
    }
  }
  a_vec |>
    paste(collapse = space) |>
    cat(yn, sep = blank)
}
q("no")