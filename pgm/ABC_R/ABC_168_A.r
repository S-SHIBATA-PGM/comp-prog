con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
vec_hon <- c(2, 4, 5, 7, 9)
vec_pon <- c(0, 1, 6, 8)
hon <- "hon"
pon <- "pon"
bon <- "bon"
one <- 1
blank <- ""
N <- arr[one] |>
    as.integer()
if (any(vec_hon == N %% 10)) {
    hon |>
        cat("\n", sep = blank)
} else if (any(vec_pon == N %% 10)) {
    pon |>
        cat("\n", sep = blank)
} else {
    bon |>
        cat("\n", sep = blank)
}
q("no")