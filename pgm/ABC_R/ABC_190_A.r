con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
zero <- 0
Takahashi <- "Takahashi"
Aoki <- "Aoki"
A <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
C <- strsplit(arr[one], split = " ")[[one]][three] |>
    as.integer()
if (C == zero) {
    if (A <= B) {
        Aoki |>
            cat("\n", sep = "")
    } else {
        Takahashi |>
            cat("\n", sep = "")
    }
} else {
    if (B <= A) {
        Takahashi |>
            cat("\n", sep = "")
    } else {
        Aoki |>
            cat("\n", sep = "")
    }
}
q("no")