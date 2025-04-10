con <- file(description = "stdin", open = "r")
v <- readLines(con = con) |>
    strsplit(split = " ")
close(con)
K <- v[1][[1]][2] |>
    as.integer()
A <- v[2][[1]] |>
    as.integer()
A[A %% K == 0] %/% K |>
    cat(sep = " ")
cat("\n")
