con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
one <- 1
two <- 2
three <- 3
A <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
C <- strsplit(arr[one], split = " ")[[one]][three] |>
    as.integer()
if (A ^ two + B ^ two < C ^ two) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")