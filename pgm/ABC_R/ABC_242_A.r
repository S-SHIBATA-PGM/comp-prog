con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
zero <- 0.0
one <- 1.0
twelve <- 12
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
C <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
X <- strsplit(arr[1], split = " ")[[1]][4] |>
    as.integer()
if (A >= X) {
    sprintf("%.12f", one) |>
        cat("\n", sep = "")
} else if (B >= X) {
    sprintf("%.12f", C / (B - A)) |>
        cat("\n", sep = "")
} else {
    sprintf("%.12f", zero) |>
        cat("\n", sep = "")
}
q("no")