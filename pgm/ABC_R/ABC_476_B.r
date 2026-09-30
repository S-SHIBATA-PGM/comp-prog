con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
asterisk <- "*"
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
three <- 3L
S <- strsplit(x = arr[two], split = blank, fixed = TRUE)[[one]]
t <- strsplit(x = arr[three], split = blank, fixed = TRUE)[[one]]
if (all(S == t | t == asterisk)) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")