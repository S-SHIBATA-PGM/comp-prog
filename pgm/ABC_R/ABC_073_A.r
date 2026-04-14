con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
nine <- "9"
Yes <- "Yes"
No <- "No"
blank <- ""
one <- 1L
N <- arr[one]
if (grepl(pattern = nine, x = N, fixed = TRUE)) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")