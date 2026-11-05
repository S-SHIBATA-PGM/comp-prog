get_next <- function(n_val) {
  ten  <- 10L
  zero <- 0L
  digit_sum_val <- zero
  while (n_val > zero) {
    digit <- n_val %% ten
    digit_sum_val <- digit_sum_val + (digit * digit)
    n_val <- n_val %/% ten
  }
  return(digit_sum_val)
}

con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
yn <- "\n"
one <- 1L
N <- token[one]
visited_env <- new.env(hash = TRUE, parent = emptyenv())
while (N != one) {
  key <- N |>
    as.character()
  if (exists(x = key, envir = visited_env, inherits = FALSE)) {
    break
  }
  assign(x = key, value = TRUE, envir = visited_env)
  N <- get_next(N)
}
if (N == one) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")