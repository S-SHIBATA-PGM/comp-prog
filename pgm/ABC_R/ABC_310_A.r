con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
P <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
Q <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
D <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
price <- min(Q + D)
min(P, price) |>
    cat("\n", sep = "")
q("no")