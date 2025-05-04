con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- arr[1]
toupper(S) |>
    cat("\n", sep = "")
q("no")