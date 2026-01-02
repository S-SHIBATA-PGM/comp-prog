con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
one <- 1L
two <- 2L
blank <- ""
space <- " "
ABC <- strsplit(x = arr[one], split = space)[[one]] |>
    as.integer()
table <- table(ABC)
if (table |>
        length() == two) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")