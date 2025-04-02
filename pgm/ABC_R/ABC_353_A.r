con <- file(description = "stdin", open = "r")
N <- readLines(con = con, n = 1) |>
    as.integer()
H <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
No <- -1
if (sum(H > H[1]) == 0) {
    No |>
        cat("\n", sep = "")
} else {
    which(H > H[1])[1] |>
        cat("\n", sep = "")
}