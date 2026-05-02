con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Alice <- "Alice"
Bob <- "Bob"
Draw <- "Draw"
blank <- ""
space <- " "
one <- 1L
two <- 2L
fourteen <- 14L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
A <- ifelse(A == one, fourteen, A)
B <- ifelse(B == one, fourteen, B)
if (A > B) {
  Alice |>
    cat("\n", sep = blank)
} else if (A < B) {
  Bob |>
    cat("\n", sep = blank)
} else {
  Draw |>
    cat("\n", sep = blank)
}
q("no")