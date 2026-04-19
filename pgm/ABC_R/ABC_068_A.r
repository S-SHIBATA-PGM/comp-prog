con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
ABC <- "ABC"
blank <- ""
one <- 1
N <- arr[one]
paste0(ABC, N) |>
    cat("\n", sep = blank)
q("no")