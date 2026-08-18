con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
N <- arr[one] |>
  as.integer()
cnt <- zero
for (i in seq_len(N)) {
  A <- strsplit(x = arr[i + one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
  B <- strsplit(x = arr[i + one], split = space, fixed = TRUE)[[one]][two] |>
    as.integer()
  if (A < B) {
    cnt <- cnt + one
  }
}
cnt |>
  cat(yn, sep = blank)
q("no")