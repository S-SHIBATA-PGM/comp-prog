con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
abc <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]] |>
  as.integer()
abc <- sort(abc)
if (abc[one] + abc[two] == abc[three]) {
  Yes |>
    cat("\n", sep = blank)
} else {
  No |>
    cat("\n", sep = blank)
}
q("no")