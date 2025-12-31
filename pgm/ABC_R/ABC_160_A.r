con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
three <- 3
four <- 4
five <- 5
six <- 6
Yes <- "Yes"
No <- "No"
blank <- ""
S <- arr[one]
if (substr(x = S, start = three, stop = three)
    == substr(x = S, start = four, stop = four)
    && substr(x = S, start = five, stop = five)
    == substr(x = S, start = six, stop = six)) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")