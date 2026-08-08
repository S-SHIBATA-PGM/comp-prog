con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
N <- arr[one] |>
  as.integer()
S <- arr[(two):(N + one)]
X <- strsplit(x = arr[two + N], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
Y <- strsplit(x = arr[two + N], split = space, fixed = TRUE)[[one]][two]
if (S[X] == Y) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")