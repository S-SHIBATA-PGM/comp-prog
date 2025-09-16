con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
ab <- strsplit(arr[one], split = " ")[[one]] |>
    as.integer()
cd <- strsplit(arr[two], split = " ")[[one]] |>
    as.integer()
x <- ab[two]
y <- cd[one]
(x - y) |>
    cat("\n", sep = "")
q("no")