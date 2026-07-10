con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
zero <- 0L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
A <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
for (i in one:N) {
  if (A[i] < X) {
    X <- A[i]
    one |>
      cat("\n", sep = blank)
  } else {
    zero |>
      cat("\n", sep = blank)
  }
}
q("no")