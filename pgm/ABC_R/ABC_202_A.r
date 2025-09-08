con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
seven <- 7
a <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
b <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
c <- strsplit(arr[one], split = " ")[[one]][three] |>
    as.integer()
(seven * three - a - b - c) |>
    cat("\n", sep = "")
q("no")