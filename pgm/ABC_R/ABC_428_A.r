con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
four <- 4L
S <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][four] |>
  as.integer()
(S * A * (X %/% (A + B)) + S * min(A, X %% (A + B))) |>
  cat(yn, sep = blank)
q("no")