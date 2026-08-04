con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
zero <- 0L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
cubes <- zero
for (i in seq_len(N)) {
  cube <- i * i * i
  if (i %% two != zero) {
    cubes <- cubes - cube
  } else {
    cubes <- cubes + cube
  }
}
cubes |>
  cat(yn, sep = blank)
q("no")