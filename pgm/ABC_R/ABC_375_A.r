con <- file(description = "stdin", open = "r")
N <- readLines(con = con, n = 1) |>
    as.integer()
S <- readLines(con = con, n = 1) |>
    strsplit(split = "") |>
    unlist()
close(con)
sharp <- "#"
dot <- "."
cnt <- 0
i <- 1
while (i <= N - 2) {
    if (sharp == S[i] && dot == S[i + 1] && sharp == S[i + 2]) {
        cnt <- cnt + 1
    }
    i <- i + 1
}
cat(cnt)
cat("\n")