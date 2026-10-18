con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
space <- " "
yn  <- "\n"
one <- 1L
two <- 2L
token <- strsplit(x = arr, split = space, fixed = TRUE) |>
  unlist() |>
  Filter(f = nzchar)
N <- token[one] |>
  as.integer()
curr_idx <- two
A <- vector(mode = "list", length = N)
for (i in seq_len(N)) {
  L <- token[curr_idx] |>
    as.integer()
  curr_idx <- curr_idx + one
  end_idx <- curr_idx + L - one
  A[[i]] <- token[curr_idx:end_idx] |>
    as.integer()
  curr_idx <- end_idx + one
}
X <- as.integer(token[curr_idx])
curr_idx <- curr_idx + one
Y <- as.integer(token[curr_idx])
A[[X]][Y] |>
  cat(sep = yn)
q("no")