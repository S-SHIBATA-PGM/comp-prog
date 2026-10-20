con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
Yes <- "Yes"
No <- "No"
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
f <- token[three:(two + N)] |>
  as.integer()
cnt <- unique(f) |>
  length()
if (cnt == N) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
if (cnt == M) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")