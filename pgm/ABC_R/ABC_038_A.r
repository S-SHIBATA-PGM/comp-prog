con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
t <- "T"
blank <- ""
one <- 1L
S <- arr[one]
if (substr(S, nchar(S), nchar(S)) == t) {
  YES |>
    cat("\n", sep = blank)
} else {
  NO |>
    cat("\n", sep = blank)
}
q("no")