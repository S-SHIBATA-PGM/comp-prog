con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
three <- 3L
char <- substring(arr, one:three, one:three)
char |>
    cat("\n", sep = blank)
q("no")