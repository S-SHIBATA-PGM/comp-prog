con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Better <- "Better"
Worse <- "Worse"
blank <- ""
space <- " "
one <- 1L
two <- 2L
x <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
y <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
if (x < y) {
  Better |>
    cat("\n", sep = blank)
} else {
  Worse |>
    cat("\n", sep = blank)
}
q("no")