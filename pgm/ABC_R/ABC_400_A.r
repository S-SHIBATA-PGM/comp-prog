con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
four_hundred <- 400L
A <- arr[one] |>
  as.integer()
if (four_hundred %% A) {
  -one |>
    cat(yn, sep = blank)
} else {
  (four_hundred %/% A) |>
    cat(yn, sep = blank)
}
q("no")