con <- file(description = "stdin", open = "r")
AB <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
if (AB[1] == AB[2]) {
    cat(1)
} else if (abs(AB[1] - AB[2]) %% 2 == 0) {
    cat(3)
} else {
    cat(2)
}
cat("\n", sep = "")