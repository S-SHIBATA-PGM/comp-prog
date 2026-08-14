con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
o <- "o"
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
L <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
R <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
S <- strsplit(x = arr[two], split = blank, fixed = TRUE)[[one]]
if (all(S[L : R] == o)) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")