con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1
two <- 2
X <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
Y <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
(X + Y / two) |>
    cat("\n", sep = blank)
q("no")