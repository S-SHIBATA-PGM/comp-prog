con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
E <- "E"
East <- "East"
West <- "West"
blank <- ""
yn <- "\n"
one <- 1L
S <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]]
cnt <- sum(S == E)
if (cnt > length(S) - cnt) {
  East |>
    cat(yn, sep = blank)
} else {
  West |>
    cat(yn, sep = blank)
}
q("no")