con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- arr[1]
S |>
    regexpr(pattern = "[A-Z]") |>
    cat("\n", sep = "")
q("no")