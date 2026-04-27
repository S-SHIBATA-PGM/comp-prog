con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one]
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two]
C <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][three]
front <- function(s) substr(s, 1, 1)
back <- function(s) substr(s, nchar(s), nchar(s))
if (back(A) == front(B) && back(B) == front(C)) {
  YES |>
    cat("\n", sep = blank)
} else {
  NO |>
    cat("\n", sep = blank)
}
q("no")