con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <-  1L
two <-  2L
three <-  3L
blank <- ""
space <- " "
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
t <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
(t %/% A * B) |>
    cat("\n", sep = blank)
q("no")