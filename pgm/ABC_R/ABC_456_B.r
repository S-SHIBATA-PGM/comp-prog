con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
percent <- "%"
period <- "."
f <- "f"
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
four <- 4L
five <- 5L
six <- 6L
ten <- 10L
zero <- 0L
pattern <- six * six * six
format <- paste0(percent, period, ten, f)
token <- strsplit(x = arr, split = space, fixed = TRUE) |>
  unlist() |>
  Filter(f = nzchar)
dice <- matrix(as.integer(token), nrow = three, ncol = six, byrow = TRUE)
grid <- expand.grid(i = seq_len(six), j = seq_len(six), k = seq_len(six))
curr <- cbind(
  dice[one, grid$i],
  dice[two, grid$j],
  dice[three, grid$k]
)
mat <- t(apply(X = curr, MARGIN = one, FUN = function(r) {
  return(sort(r))
}))
match_cond <-
  (mat[, one] == four) &
    (mat[, two] == five) &
    (mat[, three] == six)
cnt <- as.integer(match_cond) |>
  sum()
prob <- as.double(cnt) / as.double(pattern)
prob |>
  sprintf(fmt = format) |>
  cat(yn, sep = blank)
q("no")