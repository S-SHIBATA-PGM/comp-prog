con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
x <- "x"
a <- strsplit(arr[1], split = x)[[1]][1] |>
    as.integer()
b <- strsplit(arr[1], split = x)[[1]][2] |>
    as.integer()
(a * b) |>
    cat("\n", sep = "")
q("no")