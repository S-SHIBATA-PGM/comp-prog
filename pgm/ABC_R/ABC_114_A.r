con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
blank <- ""
shichi <- 7
go <- 5
san <- 3
one <- 1
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