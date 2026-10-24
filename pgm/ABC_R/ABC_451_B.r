con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
token <- strsplit(x = arr, split = space, fixed = TRUE) |>
  unlist() |>
  Filter(f = nzchar)
N <- token[one] |>
  as.integer()
M <- token[two] |>
  as.integer()
AB <- token[three:(two + two * N)] |>
  as.integer()
A <- AB[seq(one, length(AB), by = two)]
B <- AB[seq(two, length(AB), by = two)]
cnt_a <- tabulate(A, nbins = M)
cnt_b <- tabulate(B, nbins = M)
diff_vec <- cnt_b - cnt_a
for (i in seq_len(M)) {
  diff_vec[i] |>
    cat(yn, sep = blank)
}
q("no")