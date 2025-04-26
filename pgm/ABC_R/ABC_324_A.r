con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
A <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
Yes <- "Yes"
No  <- "No"
tbl <- table(A)
if (length(tbl) == 1) {
    cat(Yes)
} else {
    cat(No)
}
cat("\n")
q("no")