con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
zero <- 0L
Q <- token[one]
is_playing <- FALSE
vol <- zero
for (i in seq_len(Q)) {
  query_idx <- i + one
  A <- token[query_idx]
  if (A == one) {
    vol <- vol + one
  } else if (A == two) {
    if (one <= vol) {
      vol <- vol - one
    }
  } else {
    is_playing <- !is_playing
  }
  if (is_playing && vol >= three) {
    Yes |>
      cat(yn, sep = blank)
  } else {
    No |>
      cat(yn, sep = blank)
  }
}
q("no")