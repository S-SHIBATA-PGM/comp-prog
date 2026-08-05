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
cnt <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]] |>
  as.integer() |>
  table() |>
  length()
if (cnt <= two) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")