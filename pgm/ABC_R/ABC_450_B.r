con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
token <- strsplit(x = arr, split = space, fixed = TRUE) |>
  unlist() |>
  Filter(f = nzchar)
N <- token[one] |>
  as.integer()
C <- matrix(zero, nrow = N, ncol = N)
token_idx <- two
for (i in seq_len(N - one)) {
  for (j in (i + one):N) {
    val <- token[token_idx] |>
      as.integer()
    C[i, j] <- val
    C[j, i] <- val
    token_idx <- token_idx + one
  }
}
found <- FALSE
for (a in seq_len(N - two)) {
  for (b in (a + one):(N - one)) {
    for (c in (b + one):N) {
      if (C[a, c] > C[a, b] + C[b, c]) {
        found <- TRUE
        break
      }
    }
    if (found) break
  }
  if (found) break
}
if (found) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")