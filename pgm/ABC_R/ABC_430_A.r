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
four <- 4L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
C <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three] |>
  as.integer()
D <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][four] |>
  as.integer()
if (A <= C && D < B) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")