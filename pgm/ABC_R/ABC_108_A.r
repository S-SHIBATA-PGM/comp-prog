con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1
two <- 2
K <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
(K %/% two * (K %/% two + K %% two)) |>
    cat("\n", sep = blank)
q("no")