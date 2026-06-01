con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
four <- 4L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
C <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
K <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][four] |>
  as.integer()
S <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
t <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
if (S + t >= K) {
  (A * S + B * t - C * (S + t)) |>
    cat("\n", sep = blank)
} else {
  (A * S + B * t) |>
    cat("\n", sep = blank)
}
q("no")