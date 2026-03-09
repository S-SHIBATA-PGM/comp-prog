con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
blank <- ""
space <- " "
A <- strsplit(arr[one], split = space)[[one]] |>
    as.integer()
(max(A) - min(A)) |>
    cat("\n", sep = blank)
q("no")