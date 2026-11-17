con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
yn <- "\n"
one <- 1L
token_idx <- one
N <- token[token_idx]
token_idx <- token_idx + one
M <- token[token_idx]
token_idx <- token_idx + one
A <- token[token_idx:(token_idx + N - one)]
sum_val <- sum(A)
if (any(sum_val - A == M)) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")