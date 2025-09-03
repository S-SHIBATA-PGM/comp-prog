con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
divisor <- 100.0
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.numeric()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.numeric()
(A * B / divisor) |>
    cat("\n", sep = "")
q("no")