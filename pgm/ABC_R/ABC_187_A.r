con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
blank <- ""
space <- " "
S <- strsplit(arr[one], split = space)[[one]]
SA <- strsplit(S[one], split = blank)[[one]] |>
    as.integer()
SB <- strsplit(S[two], split = blank)[[one]] |>
    as.integer()
max(sum(SA), sum(SB)) |>
    cat("\n", sep = "")
q("no")