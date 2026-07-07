con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
one <- 1L
five <- 5L
S <- arr[one]
if (nchar(S) %% five) {
  No |>
    cat("\n", sep = blank)
} else {
  Yes |>
    cat("\n", sep = blank)
}
q("no")