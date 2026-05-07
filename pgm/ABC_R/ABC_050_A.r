con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
plus <- "+"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
op <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two]
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
if (op == plus) {
  (A + B) |>
    cat("\n", sep = blank)
} else {
  (A - B) |>
    cat("\n", sep = blank)
}
q("no")