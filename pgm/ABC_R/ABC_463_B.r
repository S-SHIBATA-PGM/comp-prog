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
token <- unlist(strsplit(x = arr, split = space, fixed = TRUE)) |>
  Filter(f = nzchar)
N <- token[one] |>
  as.integer()
X <- token[two]
target <- match(X, LETTERS)
S <- token[three:(three + N - one)]
if (any(substr(S, target, target) == circle)) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")