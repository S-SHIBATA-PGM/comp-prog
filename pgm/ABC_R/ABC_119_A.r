con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
boundary_date <- "2019/04/30"
Heisei <- "Heisei"
TBD <- "TBD"
one <- 1
blank <- ""
S <- arr[one]
if (S <= boundary_date) {
    Heisei |>
        cat("\n", sep = blank)
} else {
    TBD |>
        cat("\n", sep = blank)
}
q("no")