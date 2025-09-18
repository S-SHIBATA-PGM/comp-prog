con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
one <- 1
two <- 2
zero <- 0
M <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
H <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
if (H %% M == zero) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")