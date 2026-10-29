con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = character(), quiet = TRUE)
close(con)
period <- "."
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
N <- token[one] |>
  as.integer()
S <- token[two:length(token)]
len_vec <- nchar(S)
max_len <- max(len_vec)
for (i in seq_len(N)) {
  s_str <- S[i]
  s_len <- len_vec[i]
  cnt <- (max_len - s_len) / two
  border <- strrep(period, cnt)
  paste0(border, s_str, border) |>
    cat(yn, sep = blank)
}
q("no")