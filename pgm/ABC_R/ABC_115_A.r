con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
twenty_third <- 23L
twenty_fourth <- 24L
twenty_fifth <- 25L
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