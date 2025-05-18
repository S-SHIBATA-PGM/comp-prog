con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
atcoder <- "atcoder"
L <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
R <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
substr(atcoder, L, R) |>
    cat("\n", sep = "")
q("no")