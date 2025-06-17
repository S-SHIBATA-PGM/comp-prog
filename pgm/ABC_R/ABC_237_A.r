con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
two <- 2
thirtyone <- 31
Yes <- "Yes"
No <- "No"
N <- arr[1] |>
    as.double()
if (N >= -two^thirtyone && N < two^thirtyone) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")