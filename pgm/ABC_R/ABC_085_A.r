con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
year_2017 <- "2017"
year_2018 <- "2018"
blank <- ""
one <- 1L
S <- arr[one]
sub(year_2017, year_2018, S) |>
    cat("\n", sep = blank)
q("no")