con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
N <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
i <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
(N - i + one) |>
    cat("\n", sep = blank)
q("no")