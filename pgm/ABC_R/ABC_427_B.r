con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank <- ""
yn    <- "\n"
one   <- 1L
two   <- 2L
ten   <- 10L
zero  <- 0L
N <- token[one]
f <- function(x) {
  ret <- zero
  curr  <- x
  while (curr > zero) {
    ret <- ret + (curr %% ten)
    curr  <- curr %/% ten
  }
  return(ret)
}
A <- one
if (N >= two) {
  for (i in two:N) {
    A <- A + f(A)
  }
}
A |>
  cat(yn, sep = blank)
q("no")