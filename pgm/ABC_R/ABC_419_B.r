con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
token_idx <- one
Q <- token[token_idx]
token_idx <- token_idx + one
heap_vec  <- integer(Q)
heap_size <- zero
pick_out_vec <- integer(Q)
pick_out_idx <- zero
for (i in seq_len(Q)) {
  query_type <- token[token_idx]
  token_idx  <- token_idx + one
  if (query_type == one) {
    x <- token[token_idx]
    token_idx <- token_idx + one
    heap_size <- heap_size + one
    curr_idx  <- heap_size
    heap_vec[curr_idx] <- x
    while (curr_idx > one) {
      parent_idx <- curr_idx %/% two
      if (heap_vec[parent_idx] <= heap_vec[curr_idx]) {
        break
      }
      keep_val <- heap_vec[parent_idx]
      heap_vec[parent_idx] <- heap_vec[curr_idx]
      heap_vec[curr_idx]   <- keep_val
      curr_idx <- parent_idx
    }
  } else if (query_type == two) {
    min_val <- heap_vec[one]
    pick_out_idx <- pick_out_idx + one
    pick_out_vec[pick_out_idx] <- min_val
    heap_vec[one] <- heap_vec[heap_size]
    heap_size <- heap_size - one
    curr_idx <- one
    while (TRUE) {
      left_idx  <- curr_idx * two
      right_idx <- left_idx + one
      smallest_idx <- curr_idx
      if (left_idx <= heap_size
        && heap_vec[left_idx] < heap_vec[smallest_idx]) {
        smallest_idx <- left_idx
      }
      if (right_idx <= heap_size
        && heap_vec[right_idx] < heap_vec[smallest_idx]) {
        smallest_idx <- right_idx
      }
      if (smallest_idx == curr_idx) {
        break
      }
      keep_val <- heap_vec[curr_idx]
      heap_vec[curr_idx]     <- heap_vec[smallest_idx]
      heap_vec[smallest_idx] <- keep_val
      curr_idx <- smallest_idx
    }
  }
}
pick_out_vec[seq_len(pick_out_idx)] |>
  cat(sep = yn)
q("no")