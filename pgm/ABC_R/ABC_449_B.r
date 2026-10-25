con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
four <- 4L
token <- strsplit(x = arr, split = space, fixed = TRUE) |>
  unlist() |>
  Filter(f = nzchar)
H <- token[one] |>
  as.integer()
W <- token[two] |>
  as.integer()
Q <- token[three] |>
  as.integer()
query_mat <- matrix(
  as.integer(token[four:length(token)]),
  ncol = two,
  byrow = TRUE
)
for (i in seq_len(Q)) {
  query <- query_mat[i, one]
  RC <- query_mat[i, two]
  if (query == one) {
    (RC * W) |>
      cat(yn, sep = blank)
    H <- H - RC
  } else {
    (RC * H) |>
      cat(yn, sep = blank)
    W <- W - RC
  }
}
q("no")