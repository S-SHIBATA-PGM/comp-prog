con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
blank <- ""
space <- " "
one <- 1L
zero <- 0L
abc <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]] |>
  as.integer()
if (all(diff(abc) == diff(abc)[one])) {
  YES |>
    cat("\n", sep = blank)
} else {
  NO |>
    cat("\n", sep = blank)
}
q("no")