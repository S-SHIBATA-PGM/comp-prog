con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
zero <- 0L
token <- strsplit(x = arr, split = space, fixed = TRUE) |>
  unlist() |>
  Filter(f = nzchar)
t <- token[one] |>
  as.integer()
X <- token[two] |>
  as.integer()
A <- token[three:(three + t)] |>
  as.integer()
prev <- A[one] + X
for (time in zero:t) {
  curr <- A[time + one]
  if (abs(curr - prev) >= X) {
    cat(time, space, curr, yn, sep = blank)
    prev <- curr
  }
}
q("no")