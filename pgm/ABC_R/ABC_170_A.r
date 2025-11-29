con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
zero <- 0
blank <- ""
space <- " "
x <- strsplit(arr[one], split = space)[[one]] |>
    as.integer()
(which(x == zero)[one]) |>
    cat("\n", sep = blank)
q("no")