con <- file(description = "stdin", open = "r")
H <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer();
close(con)
ans <- 1
base <- 2
e <- 1
h <- 1
while (h <= H) {
    e <- e * base
    h <- h + e
    ans <- ans + 1
}
ans |>
    cat("\n", sep = "")