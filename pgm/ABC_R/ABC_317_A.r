con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
H <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
X <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
P <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
which(H + P >= X)[1] |>
    cat("\n", sep = "")
q("no")