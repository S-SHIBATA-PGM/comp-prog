con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
one_hundred <- 100
blank <- ""
space <- " "
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
(two * A + one_hundred - B) |>
    cat("\n", sep = blank)
q("no")