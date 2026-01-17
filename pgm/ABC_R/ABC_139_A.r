con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
blank <- ""
S <- strsplit(arr[one], split = blank)[[one]]
t <- strsplit(arr[two], split = blank)[[one]]
sum(S == t) |>
    cat("\n", sep = blank)
q("no")