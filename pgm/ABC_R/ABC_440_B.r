con <- file(description = "stdin", open = "r")
token <- scan(file = con, what = integer(), quiet = TRUE)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
zero <- 0L
N <- token[one]
id_vec <- seq_len(N)
t <- token[two : length(token)]
sorted_idx <- order(t)
first_id <- id_vec[sorted_idx[one]]
second_id <- id_vec[sorted_idx[two]]
third_id <- id_vec[sorted_idx[three]]
paste(first_id, second_id, third_id) |>
  cat(yn, sep = blank)
q("no")