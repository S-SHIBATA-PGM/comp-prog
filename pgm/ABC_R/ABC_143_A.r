con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
zero <- 0L
blank <- ""
space <- " "
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
max(zero, A - 2 * B) |>
    cat("\n", sep = blank)
q("no")