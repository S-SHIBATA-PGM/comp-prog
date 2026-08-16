con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
zero <- 0L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
L <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
R <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
cnt <- zero
for (i in seq_len(N)) {
  X <- strsplit(x = arr[i + one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
  Y <- strsplit(x = arr[i + one], split = space, fixed = TRUE)[[one]][two] |>
    as.integer()
  if (X <= L && R <= Y) {
    cnt <- cnt + one
  }
}
cnt |>
  cat(yn, sep = blank)
q("no")