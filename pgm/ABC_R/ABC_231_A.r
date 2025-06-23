con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
divisor <- 100
D <- arr[1] |>
    as.integer()
(D / divisor) |>
    cat("\n", sep = "")
q("no")