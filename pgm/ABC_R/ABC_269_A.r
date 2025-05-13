con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Takahashi <- "Takahashi"
a <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
b <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
c <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
d <- strsplit(arr[1], split = " ")[[1]][4] |>
    as.integer()
((a + b) * (c - d)) |>
    cat("\n", sep = "")
Takahashi |>
    cat("\n", sep = "")
q("no")