con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
MD <- strsplit(arr[1], split = " ")[[1]] |>
    as.integer()
M <- MD[1]
D <- MD[2]
ymd <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
y <- ymd[1]
m <- ymd[2]
d <- ymd[3]
d <- d + 1
if (d > D) {
    d <- d - D
    m <- m + 1
}
if (m > M) {
    m <- m - M
    y <- y + 1
}
paste(y, m, d, sep = " ") |>
    cat("\n", sep = "")