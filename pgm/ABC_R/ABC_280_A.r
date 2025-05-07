con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
sharp <- "#"
H <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
cnt <- 0
for (i in seq_len(H)) {
    S <- strsplit(arr[i + 1], split = "")[[1]]
    cnt <- cnt + sum(S == sharp)
}
cnt |>
    cat("\n", sep = "")
q("no")