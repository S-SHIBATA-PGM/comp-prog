con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
t <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
    as.integer()
(X - min(X, t)) |>
    cat("\n", sep = blank)
q("no")