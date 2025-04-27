con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
S <- arr[2]
ABC <- "ABC"
gregexpr(pattern = ABC, text = S)[[1]][1] |>
    cat("\n", sep = "")
q("no")