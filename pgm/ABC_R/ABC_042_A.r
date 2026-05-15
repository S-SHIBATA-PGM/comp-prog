con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
blank <- ""
space <- " "
one <- 1
go <- 5
shichi <- 7
ABC <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]]
if (identical(sort(ABC), c(go, go, shichi) |>
      as.character())) {
  YES |>
    cat("\n", sep = blank)
} else {
  NO |>
    cat("\n", sep = blank)
}