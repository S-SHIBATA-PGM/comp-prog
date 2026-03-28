line <- readLines(con = "stdin")
blank <- ""
one <- 1L
two <- 2L
three <- 3L
char <- substring(line, one:three, one:three)
char |>
    cat("\n", sep = blank)
q("no")