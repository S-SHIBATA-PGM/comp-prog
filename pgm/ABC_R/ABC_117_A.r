con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
blank <- ""
space <- " "
t <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
X <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
(t / X) |>
    cat("\n", sep = blank)
q("no")