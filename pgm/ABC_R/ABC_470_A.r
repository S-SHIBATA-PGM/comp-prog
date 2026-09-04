con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Fizz <- "Fizz"
blank <- ""
yn <- "\n"
one <- 1L
three <- 3L
N <- arr[one] |>
  as.integer()
for (i in seq_len(N)) {
  if (i %% three) {
    i |>
      cat(yn, sep = blank)
  } else {
    Fizz |>
      cat(yn, sep = blank)
  }
}
q("no")