con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
L1 <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
R1 <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
L2 <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
R2 <- strsplit(arr[1], split = " ")[[1]][4] |>
    as.integer()
max(min(R1, R2) - max(L1, L2), 0) |>
    cat("\n", sep = "")
q("no")