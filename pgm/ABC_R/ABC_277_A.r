con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
X <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
P <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
which(P == X) |>
    cat("\n", sep = "")
q("no")