con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
and <- "and"
not <- "not"
that <- "that"
the <- "the"
you <- "you"
Yes <- "Yes"
No <- "No"
keyword <- c(and, not, that, the, you)
S <- strsplit(arr[2], split = " ")[[1]]
if (any(S %in% keyword)) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")