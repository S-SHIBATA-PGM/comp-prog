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
M <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
cnt <- zero
while (M > zero) {
  cnt <- cnt + one
  M <- N %% M
}
cnt |>
  cat("\n", sep = blank)
q("no")