con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
A[which(A %% 2 == 0)] |>
    cat()
cat("\n", sep = "")
q("no")