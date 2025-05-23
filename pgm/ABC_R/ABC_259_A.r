con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
no <- -1
M <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
X <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
t <- strsplit(arr[1], split = " ")[[1]][4] |>
    as.integer()
D <- strsplit(arr[1], split = " ")[[1]][5] |>
    as.integer()
if (M <= X) {
    (t - D * (X - M)) |>
        cat("\n", sep = "")
} else {
    t |>
        cat("\n", sep = "")
}
q("no")