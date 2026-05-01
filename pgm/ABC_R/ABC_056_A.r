con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
H <- "H"
D <- "D"
blank <- ""
space <- " "
one <- 1L
two <- 2L
a <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one]
b <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two]
if (a == H) {
  b |>
    cat("\n", sep = blank)
} else if (b == H) {
  D |>
    cat("\n", sep = blank)
} else {
  H |>
    cat("\n", sep = blank)
}
q("no")