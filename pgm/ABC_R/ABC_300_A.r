con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
C <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
which(C == A + B) |>
    cat("\n", sep = "")
q("no")