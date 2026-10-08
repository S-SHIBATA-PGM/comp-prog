con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
keep <- "keep"
space <- " "
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
four <- 4L
token <- unlist(strsplit(x = arr, split = space, fixed = TRUE)) |>
  Filter(f = nzchar)
N <- token[one] |>
  as.integer()
a <- seq(from = two,   by = three, length.out = N)
b <- seq(from = three, by = three, length.out = N)
s <- seq(from = four,  by = three, length.out = N)
A <- token[a] |>
  as.integer()
B <- token[b] |>
  as.integer()
S <- token[s]
is_keep <- S == keep
(B[is_keep] - A[is_keep]) |>
  sum() |>
  cat(yn, sep = blank)
q("no")