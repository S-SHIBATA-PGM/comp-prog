con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
six <- 6
Yes <- "Yes"
No <- "No"
A <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
if (A <= B && B <= six * A) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")