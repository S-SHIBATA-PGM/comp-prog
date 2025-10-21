con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
blank <- ""
space <- " "
N <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
A <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
(N - A + B) |>
    cat("\n", sep = blank)
q("no")