con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
ten <- 10
X <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
Y <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
max(0, ceiling((Y - X) / ten)) |>
    cat("\n", sep = "")
q("no")