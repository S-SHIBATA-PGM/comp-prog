con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
M1 <- 1L
M3 <- 3L
M5 <- 5L
M7 <- 7L
M9 <- 9L
D3 <- 3L
D5 <- 5L
D7 <- 7L
D9 <- 9L
one <- 1L
two <- 2L
gosekku <- data.frame(
  M = c(M1, M3, M5, M7, M9),
  D = c(D7, D3, D5, D7, D9)
)
M <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
D <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
if (sum(gosekku$M == M & gosekku$D == D)) {
  Yes |>
    cat("\n", sep = blank)
} else {
  No |>
    cat("\n", sep = blank)
}
q("no")