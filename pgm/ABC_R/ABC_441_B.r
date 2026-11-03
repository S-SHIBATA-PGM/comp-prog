con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = character(), quiet = TRUE)
close(con)
Takahashi <- "Takahashi"
Aoki <- "Aoki"
Unknown <- "Unknown"
blank <- ""
yn <- "\n"
a <- "a"
z <- "z"
one <- 1L
two <- 2L
zero <- 0L
c_a <- utf8ToInt(a)
c_z <- utf8ToInt(z)
alph <- c_z - c_a + one
token_idx <- one
N <- token[token_idx] |>
  as.integer()
token_idx <- token_idx + one
M <- token[token_idx] |>
  as.integer()
token_idx <- token_idx + one
s_vec <- token[token_idx] |>
  strsplit(split = blank, fixed = TRUE) |>
  unlist()
token_idx <- token_idx + one
t_vec <- token[token_idx] |>
  strsplit(split = blank, fixed = TRUE) |>
  unlist()
token_idx <- token_idx + one
Q <- token[token_idx]
t_language <- rep(FALSE, alph)
a_language <- rep(FALSE, alph)
for (s in s_vec) {
  idx <- utf8ToInt(s) - c_a + one
  t_language[idx] <- !t_language[idx]
}
for (t in t_vec) {
  idx <- utf8ToInt(t) - c_a + one
  a_language[idx] <- !a_language[idx]
}
for (i in seq_len(Q)) {
  token_idx <- token_idx + one
  w_vec <- token[token_idx] |>
    strsplit(split = blank, fixed = TRUE) |>
    unlist()
  done_flg <- FALSE
  is_t_language <- TRUE
  is_a_language <- TRUE
  for (w in w_vec) {
    idx <- utf8ToInt(w) - c_a + one
    if (is_t_language) {
      is_t_language <- t_language[idx]
    }
    if (is_a_language) {
      is_a_language <- a_language[idx]
    }
    if (!is_t_language && !is_a_language) {
      Unknown |>
        cat(yn, sep = blank)
      done_flg <- TRUE
      break
    }
  }
  if (!done_flg) {
    if (is_t_language && !is_a_language) {
      Takahashi |>
        cat(yn, sep = blank)
    } else if (!is_t_language && is_a_language) {
      Aoki |>
        cat(yn, sep = blank)
    } else {
      Unknown |>
        cat(yn, sep = blank)
    }
  }
}
q("no")