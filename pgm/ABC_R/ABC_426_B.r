con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = character(), quiet = TRUE)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
X <- strsplit(token[one], split = blank)[[one]]
freq_tab <- X |>
  table()
names(freq_tab)[freq_tab == one][one] |>
  cat(yn, sep = blank)
q("no")