con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
v <- "v"
one <- 1
two <- 2
S <- strsplit(arr[1], split = "")[[1]]
(one * sum(S == v) + two * sum(S != v)) |>
    cat("\n", sep = "")
q("no")