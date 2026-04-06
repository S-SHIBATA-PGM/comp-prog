con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
s <- strsplit(arr[one], split = blank)[[one]] |>
    as.integer()
sum(s) |>
    cat("\n", sep = blank)
q("no")