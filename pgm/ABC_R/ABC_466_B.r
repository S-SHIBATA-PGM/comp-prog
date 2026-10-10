con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
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
M <- token[two] |>
  as.integer()
c <- seq(from = three, by = two, length.out = N)
s <- seq(from = four, by = two, length.out = N)
C <- token[c] |>
  as.integer()
S <- token[s] |>
  as.integer()
mx <- rep(-one, M)
if (N > 0L) {
  max_by_c <- tapply(X = S, INDEX = C, FUN = max)
  present <- max_by_c |>
    names() |>
    as.integer()
  mx[present] <- max_by_c |>
    as.integer()
}
mx |>
  cat(sep = space) |>
  cat(yn, sep = blank)
q("no")