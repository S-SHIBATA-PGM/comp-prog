con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1L
two <- 2L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
D <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
if (A <= D) {
  Yes |>
    cat("\n", sep = blank)
} else {
  No |>
    cat("\n", sep = blank)
}
q("no")