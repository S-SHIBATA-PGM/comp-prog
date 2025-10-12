con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
space <- " "
A <- strsplit(arr[one], split = space)[[one]] |>
    as.integer()
min(A) |>
    cat("\n", sep = "")
q("no")