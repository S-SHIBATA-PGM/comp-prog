con <- file(description = "stdin", open = "r")
N <- readLines(con = con)[1][[1]] |>
    as.integer()
close(con)
zero <- "0"
one <- "1"
v <- rep(one, times = N + 1)
cat(v, sep = zero)
cat("\n")