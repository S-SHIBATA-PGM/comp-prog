con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
er <- "er"
ist <- "ist"
S <- arr[1]
if (S |>
        endsWith(suffix = er)) {
    er |>
        cat("\n", sep = "")
} else {
    ist |>
        cat("\n", sep = "")
}
q("no")