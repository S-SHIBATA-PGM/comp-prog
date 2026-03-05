
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
blank <- ""
shichi <- 7L
go <- 5L
san <- 3L
one <- 1L
shichigosan <- c(shichi, go, san)
X <- arr[one] |>
    as.integer()
if (X %in% shichigosan) {
    YES |>
        cat("\n", sep = blank)
} else {
    NO |>
        cat("\n", sep = blank)
}
q("no")
