con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Takahashi <- "Takahashi"
Aoki <- "Aoki"
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
C <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
D <- strsplit(arr[1], split = " ")[[1]][4] |>
    as.integer()
if (A < C) {
    Takahashi |>
        cat("\n", sep = "")
} else if (A > C) {
    Aoki |>
        cat("\n", sep = "")
} else if (B <= D) {
    Takahashi |>
        cat("\n", sep = "")
} else {
    Aoki |>
        cat("\n", sep = "")
}
q("no")