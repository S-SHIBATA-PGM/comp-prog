con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
zero <- 0
Gold <- "Gold"
Silver <- "Silver"
Alloy <- "Alloy"
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
if (A > zero && B > zero) {
    Alloy |>
        cat("\n", sep = "")
} else if (A == zero) {
    Silver |>
        cat("\n", sep = "")
} else {
    Gold |>
        cat("\n", sep = "")
}
q("no")