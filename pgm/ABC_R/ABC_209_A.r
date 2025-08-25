con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
zero <- 0
A <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
max(zero, B - A + 1) |>
    cat("\n", sep = "")
q("no")