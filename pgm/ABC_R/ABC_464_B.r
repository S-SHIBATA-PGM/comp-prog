con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
sharp <- "#"
space <- " "
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
token <- unlist(strsplit(x = arr[one], split = space, fixed = TRUE)) |>
  Filter(f = nzchar)
H <- as.integer(token[one])
W <- as.integer(token[two])
grid <- arr[two:(H + one)]
matrix <- do.call(
  what = rbind,
  args = strsplit(x = grid, split = blank, fixed = TRUE)
)
coord <- which(matrix == sharp, arr.ind = TRUE)
min_y <- min(coord[, one])
max_y <- max(coord[, one])
min_x <- min(coord[, two])
max_x <- max(coord[, two])
sub_matrix <- matrix[min_y:max_y, min_x:max_x, drop = FALSE]
apply(X = sub_matrix, MARGIN = one, FUN = paste0, collapse = blank) |>
  cat(sep = yn)
q("no")