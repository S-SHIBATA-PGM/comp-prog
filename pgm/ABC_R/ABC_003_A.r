con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1
five_thousand <- 5000
N <- arr[one] |>
  as.integer()
# nolint start
# 計算過程
# (N * (1 + N)) / 2 * 10000 / N
# (1 + N) / 2 * 10000
# (1 + N) * 5000
# nolint end
((one + N) * five_thousand) |>
  cat("\n", sep = blank)
q("no")