con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = character(), quiet = TRUE)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
token_idx <- one
N <- token[token_idx] |>
  as.integer()
token_idx <- token_idx + one
K <- token[token_idx] |>
  as.integer()
token_idx <- token_idx + one
S <- token[token_idx]
limit_val <- N - K + one
start_vec <- seq_len(limit_val)
end_vec   <- start_vec + K - one
sub_vec <- substring(S, first = start_vec, last = end_vec)
freq_tab <- sub_vec |>
  table()
max_freq <- freq_tab |>
  max()
candidate_vec <- names(freq_tab)[freq_tab == max_freq] |>
  sort()
max_freq |>
  cat(yn, sep = blank)
candidate_vec |>
  paste(collapse = space) |>
  cat(yn, sep = blank)
q("no")