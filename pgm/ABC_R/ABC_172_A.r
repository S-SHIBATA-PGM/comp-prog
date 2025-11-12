con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
one_thousand <- 1000
blank <- ""
a <- arr[one] |>
    as.integer()
(a + a^2 + a^3) |>
    cat("\n", sep = blank)
q("no")