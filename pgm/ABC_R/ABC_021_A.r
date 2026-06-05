con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
zero <- 0L
N <- arr[one] |>
  as.integer()
i <- zero
num_list <- integer(zero)
while (N > zero) {
  if (bitwAnd(N, one) == one) {
    num_list <- c(num_list, bitwShiftL(one, i))
  }
  N <- bitwShiftR(N, one)
  i <- i + one
}
num_list <- sort(num_list)
length(num_list) |>
  cat("\n", sep = blank)
if (length(num_list) > zero) {
  num_list |>
    cat(sep = "\n")
}
q("no")