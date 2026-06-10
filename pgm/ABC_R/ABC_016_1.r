con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
space <- " "
blank <- ""
one <- 1L
two <- 2L
M <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
D <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
if (M %% D) {
  NO |>
    cat("\n", sep = blank)
} else {
  YES |>
    cat("\n", sep = blank)
}
q("no")