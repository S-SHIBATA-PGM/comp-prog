con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
blank <- ""
space <- " "
H <- strsplit(x = arr[one], split = space)[[one]][one] |>
    as.integer()
A <- strsplit(x = arr[one], split = space)[[one]][two] |>
    as.integer()
(H / A) |>
    ceiling() |>
    cat("\n", sep = blank)
q("no")