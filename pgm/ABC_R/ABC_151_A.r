con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
C <- arr[one]
(C |>
        utf8ToInt() + one) |>
    intToUtf8() |>
    cat("\n", sep = blank)
q("no")