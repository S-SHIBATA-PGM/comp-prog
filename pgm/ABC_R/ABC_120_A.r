con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
space <- " "
blank <- ""
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
C <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
min(B %/% A, C) |>
    cat("\n", sep = blank)
q("no")