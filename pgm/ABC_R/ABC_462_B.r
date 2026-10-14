con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
space <- " "
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
token <- unlist(strsplit(x = arr, split = space, fixed = TRUE)) |>
  Filter(f = nzchar)
N <- token[one] |>
  as.integer()
KA <- arr[two:(N + one)]
gift <- lapply(KA, function(line) {
  ka <- unlist(strsplit(line, split = space, fixed = TRUE)) |>
    Filter(f = nzchar) |>
    as.integer()
  K <- ka[one]
  return(ka[two:(K + one)])
})
edge_list <- mapply(function(i, dests) {
  if (length(dests) == zero) {
    return(NULL)
  }
  return(data.frame(from = i, to = dests))
}, seq_len(N), gift, SIMPLIFY = FALSE)
edge <- do.call(what = rbind, args = edge_list)
receive_list <- if (!is.null(edge) && nrow(edge) > zero) {
  split(edge$from, factor(edge$to, levels = seq_len(N)))
} else {
  replicate(N, integer(0), simplify = FALSE)
}
gift_list <- sapply(seq_len(N), function(i) {
  froms <- receive_list[[i]]
  k <- length(froms)
  if (k == zero) {
    return(as.character(k))
  } else {
    return(paste(c(k, froms), collapse = space))
  }
})
gift_list |>
  cat(sep = yn)
q("no")