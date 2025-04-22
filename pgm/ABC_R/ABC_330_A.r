con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
L <- as.integer(strsplit(arr[1], split = " ")[[1]])[2]
A <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
sum(A >= L) |>
    cat("\n", sep = "")