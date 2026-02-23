con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1
two <- 2
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if ((A * B) %% two == one) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")