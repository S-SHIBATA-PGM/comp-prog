con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn    <- "\n"
one   <- 1L
two   <- 2L
three <- 3L
zero  <- 0L
token <- strsplit(x = arr, split = space, fixed = TRUE) |>
  unlist() |>
  Filter(f = nzchar)
N <- token[one] |>
  as.integer()
M <- token[two] |>
  as.integer()
C <- as.integer(token[three:(two + M)])
AB <- matrix(
  as.integer(token[(two + M + one):length(token)]),
  ncol = two,
  byrow = TRUE
)
sum_val <- zero
for (i in seq_len(N)) {
  A <- AB[i, one]
  B <- AB[i, two]
  assigned <- min(B, C[A])
  sum_val <- sum_val + assigned
  C[A] <- C[A] - assigned
}
sum_val |>
  cat(yn, sep = blank)
q("no")