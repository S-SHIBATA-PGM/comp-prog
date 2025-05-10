con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
format(round(B / A, digits = 3), nsmall = 3) |>
    cat("\n", sep = "")
q("no")