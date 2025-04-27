con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- strsplit(arr[1], split = "")[[1]] |>
    as.integer()
Yes <- "Yes"
No <- "No"
pre <- 10
flg <- TRUE
for (i in seq_along(N)) {
    if (N[i] >= pre) {
        flg <- FALSE
        break
    }
    pre <- N[i]
}
if (flg) {
    cat(Yes)
} else {
    cat(No)
}
cat("\n")
q("no")