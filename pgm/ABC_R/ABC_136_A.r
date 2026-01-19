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
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
C <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
(C - min(A - B, C)) |>
    cat("\n", sep = blank)
q("no")