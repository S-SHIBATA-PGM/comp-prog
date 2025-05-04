con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
D <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
t <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
no <- -1
diff <- diff(t)
if (sum(diff <= D) == 0) {
    no |>
        cat("\n", sep = "")
} else {
    t[which(diff <= D)[1] + 1] |>
        cat("\n", sep = "")
}
q("no")