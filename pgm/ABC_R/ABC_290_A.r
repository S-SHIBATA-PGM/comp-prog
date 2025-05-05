con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
B <- strsplit(arr[3], split = " ")[[1]] |>
    as.integer()
A[B] |>
    sum() |>
    cat("\n", sep = "")
q("no")