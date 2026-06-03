con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
four <- 4L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
S <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
t <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
W <- arr[two] |>
  as.integer()
A <- (arr[-c(one, two)]) |>
  as.integer()
A <- cumsum(c(W, A))
sum(A >= S & A <= t) |>
  cat("\n", sep = blank)
q("no")