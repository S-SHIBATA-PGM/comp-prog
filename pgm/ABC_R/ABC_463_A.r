con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1L
two <- 2L
nine <- 9L
sixteen <- 16L
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
Y <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
if (nine * X == sixteen * Y) {
  Yes |>
    cat("\n", sep = blank)
} else {
  No |>
    cat("\n", sep = blank)
}
q("no")