con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
space <- " "
N <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
W <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
N %/% W |>
    cat("\n", sep = "")
q("no")