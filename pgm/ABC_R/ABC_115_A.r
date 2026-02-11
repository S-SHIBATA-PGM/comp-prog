con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
twenty_third <- 23
twenty_fourth <- 24
twenty_fifth <- 25
christmas <- "Christmas"
christmas_eve <- "Christmas Eve"
christmas_eve_eve <- "Christmas Eve Eve"
christmas_eve_eve_eve <- "Christmas Eve Eve Eve"
blank <- ""
space <- " "
D <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
if (D == twenty_fifth) {
    christmas |>
        cat("\n", sep = blank)
} else if (D == twenty_fourth) {
    christmas_eve |>
        cat("\n", sep = blank)
} else if (D == twenty_third) {
    christmas_eve_eve |>
        cat("\n", sep = blank)
} else {
    christmas_eve_eve_eve |>
        cat("\n", sep = blank)
}
q("no")