con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
a <- "a"
S <- arr[1]
P <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
tail(gregexpr(a, S, fixed = TRUE)[[1]], n = 1) |>
    cat("\n", sep = "")
q("no")