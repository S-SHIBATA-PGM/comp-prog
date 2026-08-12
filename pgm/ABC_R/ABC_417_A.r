con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
S <- arr[two]
substr(x = S, start = A + one, stop = N - B) |>
  cat(yn, sep = blank)
q("no")