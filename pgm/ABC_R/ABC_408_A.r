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
zero <- 0L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
S <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
t <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
if (all(diff(c(zero, t)) <= S)) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")