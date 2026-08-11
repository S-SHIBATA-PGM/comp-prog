con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
tea <- "tea"
blank   <- ""
yn      <- "\n"
two     <- 2L
S <- arr[two]
if (endsWith(x = S, suffix = tea)) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")