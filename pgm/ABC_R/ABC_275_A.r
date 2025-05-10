con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
H <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
which.max(H) |>
    cat("\n", sep = "")
q("no")