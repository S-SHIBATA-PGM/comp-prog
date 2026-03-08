con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
ABC <- "ABC"
ARC <- "ARC"
AGC <- "AGC"
contest <- "contest"
blank <- ""
one_thousand_two_hundred <- 1200L
two_thousand_eight_hundred <- 2800L
one <- 1L
zero <- 0L
R <- arr[one] |>
    as.integer()
Rating <- data.frame(
    threshold = c(one_thousand_two_hundred, two_thousand_eight_hundred),
    contest = c(ABC, ARC),
    stringsAsFactors = FALSE
)
if (length(Rating[Rating$threshold > R, contest]) > zero) {
    Rating[Rating$threshold > R, contest][one] |>
        cat("\n", sep = blank)
} else {
    AGC |>
        cat("\n", sep = blank)
}
q("no")