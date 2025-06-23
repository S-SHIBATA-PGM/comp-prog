con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
AGC <- "AGC"
missing <- 42
times <- N
if (times >= missing) {
    times <- times + 1
}
paste0(AGC, (times |>
            sprintf(fmt = "%03d"))) |>
    cat("\n", sep = "")
q("no")