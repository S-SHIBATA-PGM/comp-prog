con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
circle <- "o"
space <- " "
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
tokens <- unlist(strsplit(x = arr, split = space, fixed = TRUE)) |>
  Filter(f = nzchar)
N <- tokens[one] |>
  as.integer()
X <- tokens[two]
target <- match(X, LETTERS)
S <- tokens[three:(three + N - one)]
if (any(substr(S, target, target) == circle)) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")