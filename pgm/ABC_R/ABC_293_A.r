con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- strsplit(arr[1], split = "")[[1]]
len <- length(S)
for (i in seq(from = 1, to = len, by = 2)) {
    S[i + 1] |>
        cat()
    S[i] |>
        cat()
}
cat("\n", sep = "")
q("no")