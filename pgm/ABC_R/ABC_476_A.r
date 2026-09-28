con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
e <- "e"
r <- "r"
er <- "er"
blank <- ""
yn <- "\n"
one <- 1L
S <- arr[one]
if (endsWith(x = S, suffix = e)) {
  paste0(S, r) |>
    cat(yn, sep = blank)
} else {
  paste0(S, er) |>
    cat(yn, sep = blank)
}
q("no")