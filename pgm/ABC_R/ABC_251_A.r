con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
six <- 6
S <- arr[1]
rep(S, six / nchar(S)) |>
    paste(collapse = "") |>
    cat("\n", sep = "")
q("no")