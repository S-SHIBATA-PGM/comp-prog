con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
four <- 4L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
C <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
D <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][four] |>
  as.integer()
max(A * B, C * D) |>
  cat("\n", sep = blank)
q("no")