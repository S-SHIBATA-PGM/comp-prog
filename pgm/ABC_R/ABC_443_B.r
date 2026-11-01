con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
N <- token[one]
K <- token[two]
age <- N - one
sum_val <- zero
while (sum_val < K) {
  age <- age + one
  sum_val <- sum_val + age
}
(age - N) |>
  cat(yn, sep = blank)
q("no")