con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- strsplit(arr[1], split = "")[[1]] |>
    as.integer()
zero <- 0
Yes <- "Yes"
No <- "No"
if (all(S[rep(c(FALSE, TRUE), length.out = 16)] == zero)) {
    cat(Yes)
} else {
    cat(No)
}
cat("\n", sep = "")
q("no")