con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
G <- "G"
plus <- "+"
space <- " "
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
zero <- 0L
M <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
D <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
S <- strsplit(x = arr[two], split = blank, fixed = TRUE)[[one]]
indice <- which(S == G)
is_watched <- logical(M)
if (length(indice) > zero) {
  watch <- outer(indice, -D:D, FUN = plus) |>
    as.vector()
  valid <- watch[watch >= one & watch <= M]
  is_watched[valid] <- TRUE
}
(!is_watched) |>
  sum() |>
  cat(yn, sep = blank)
q("no")