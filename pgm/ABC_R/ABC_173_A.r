con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
one_thousand <- 1000
blank <- ""
N <- arr[one] |>
    as.integer()
(one_thousand - N %% one_thousand) %% one_thousand |>
    cat("\n", sep = blank)
q("no")