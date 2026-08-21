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
N <- arr[one] |>
  as.integer()
t <- strsplit(x = arr[two], split = blank, fixed = TRUE)[[one]]
A <- strsplit(x = arr[three], split = blank, fixed = TRUE)[[one]]
if (any(t == o & A == o)) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")