con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
three <- 3L
blank <- ""
space <- " "
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
P <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
((three * A + P) %/% two) |>
    cat("\n", sep = blank)
q("no")