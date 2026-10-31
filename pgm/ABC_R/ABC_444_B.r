con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = character(), quiet = TRUE)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
N <- token[one]
K <- token[two]
cnt <- zero
for (i in zero:N) {
  num <- i |>
    as.character()
  char_vec <- num |>
    strsplit(split = blank, fixed = TRUE) |>
    unlist()
  digit_sum <- char_vec |>
    as.integer() |>
    sum()
  if (digit_sum == K) {
    cnt <- cnt + one
  }
}
cnt |>
  cat(yn, sep = blank)
q("no")