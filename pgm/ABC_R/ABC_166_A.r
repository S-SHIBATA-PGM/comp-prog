con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
ABC <- "ABC"
ARC <- "ARC"
one <- 1
blank <- ""
S <- arr[one]
if (S == ARC) {
    ABC |>
        cat("\n", sep = blank)
} else {
    ARC |>
        cat("\n", sep = blank)
}
q("no")