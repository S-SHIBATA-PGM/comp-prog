con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
RAINY <- "R"
one <- 1
zero <- 0
blank <- ""
S <- strsplit(arr[one], split = blank)[[one]]
num <- zero
ans <- zero
for (c in S) {
    if (c == RAINY) {
        num = num + one
    } else {
        ans <- max(ans, num)
        num <- zero
    }
}
max(ans, num) |>
    cat("\n", sep = blank)
q("no")