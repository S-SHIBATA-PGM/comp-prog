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
three <- 3L
N <- arr[one] |>
  as.integer()
A <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
X <- arr[three] |>
  as.integer()
if (X %in% A) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")