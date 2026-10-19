con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
token <- strsplit(x = arr, split = space, fixed = TRUE) |>
  unlist() |>
  Filter(f = nzchar)
H <- token[one] |>
  as.integer()
W <- token[two] |>
  as.integer()
S <- arr[-one]
grid_mat <- do.call(rbind, strsplit(S, split = blank))
cnt <- zero
for (y1 in seq_len(H)) {
  for (y2 in y1:H) {
    for (x1 in seq_len(W)) {
      for (x2 in x1:W) {
        is_symmetric <- TRUE
        for (x in x1:x2) {
          for (y in y1:y2) {
            opp_y <- y2 - (y - y1)
            opp_x <- x2 - (x - x1)
            if (grid_mat[y, x] != grid_mat[opp_y, opp_x]) {
              is_symmetric <- FALSE
              break
            }
          }
          if (!is_symmetric) {
            break
          }
        }
        if (is_symmetric) {
          cnt <- cnt + one
        }
      }
    }
  }
}
cnt |>
  cat(yn, sep = blank)
q("no")