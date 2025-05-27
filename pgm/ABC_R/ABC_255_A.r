con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
R <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
C <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
mat <- matrix(nrow = 0, ncol = 2, byrow = TRUE)
row <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
mat <- rbind(mat, row)
row <- strsplit(arr[3], split = " ")[[1]] |>
    as.integer()
mat <- rbind(mat, row)
mat[R, C] |>
    cat("\n", sep = "")
q("no")