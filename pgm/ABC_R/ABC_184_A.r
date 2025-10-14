con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
blank <- ""
space <- " "
ab <- strsplit(arr[one], split = space)[[one]] |>
    as.integer()
cd <- strsplit(arr[two], split = space)[[one]] |>
    as.integer()
(ab[one] * cd[two] - ab[two] * cd[one]) |>
    cat("\n", sep = blank)
q("no")