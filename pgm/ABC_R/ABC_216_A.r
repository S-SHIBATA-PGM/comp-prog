con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
dot <- "\\."
minus <- "-"
plus <- "+"
two <- 2
six <- 6
X <- strsplit(arr[1], split = dot)[[1]][1] |>
    as.integer()
Y <- strsplit(arr[1], split = dot)[[1]][2] |>
    as.integer()
if (Y <= two) {
    paste0(X, minus) |>
        cat()
} else if (Y <= six) {
    X |>
        cat()
} else {
    paste0(X, plus) |>
        cat()
}
cat("\n")
q("no")