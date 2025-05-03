con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
S <- strsplit(arr[2], split = "")[[1]]
good <- "o"
failing <- "x"
Yes <- "Yes"
No <- "No"
if (any(S == good) && !any(S == failing)) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")