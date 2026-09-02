con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Nine <- "Nine"
Nein <- "Nein"
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
nine <- 9L
A <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
B <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
calc <- c(
  A + B,
  A - B,
  A * B,
  A / B
)
if (any(calc == nine)) {
  Nine |>
    cat(yn, sep = blank)
} else {
  Nein |>
    cat(yn, sep = blank)
}
q("no")