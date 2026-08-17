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
M <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
A <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
if (sum(A) <= M) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")