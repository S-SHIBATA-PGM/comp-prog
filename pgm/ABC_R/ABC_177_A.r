con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
one <- 1
two <- 2
three <- 3
blank <- ""
space <- " "
D <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
t <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
S <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
if (D <= S * t) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")