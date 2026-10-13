con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
space <- " "
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
tokens <- unlist(strsplit(x = arr, split = space, fixed = TRUE)) |>
  Filter(f = nzchar)
N <- tokens[one] |>
  as.integer()
a_indice <- two:(two + N - one)
b_indice <- (two + N):(two + two * N - one)
A <- tokens[a_indice] |>
  as.integer()
B <- tokens[b_indice] |>
  as.integer()
if (all(B[A] == seq_len(N))) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")