con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
H <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
W <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
R <- strsplit(arr[2], split = " ")[[1]][1] |>
    as.integer()
C <- strsplit(arr[2], split = " ")[[1]][2] |>
    as.integer()
one <- 1
two <- 2
three <- 3
four <- 4
if (one < R && R < H && one < C && C < W) {
    four |>
        cat("\n", sep = "")
} else if ((R == one || R == H) && one < C && C < W) {
    (two + min(one, H - one)) |>
        cat("\n", sep = "")
} else if (one < R && R < H && (C == one || C == W)) {
    (two + min(one, W - one)) |>
        cat("\n", sep = "")
} else {
    (min(one, H - one) + min(one, W - one)) |>
        cat("\n", sep = "")
}
q("no")