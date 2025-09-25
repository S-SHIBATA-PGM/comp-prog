con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
one <- 1
two <- 2
three <- 3
four <- 4
V <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
t <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
S <- strsplit(arr[one], split = " ")[[one]][three] |>
    as.integer()
D <- strsplit(arr[one], split = " ")[[one]][four] |>
    as.integer()
if (V * t <= D && D <= V * S) {
    No |>
        cat("\n", sep = "")
} else {
    Yes |>
        cat("\n", sep = "")
}
q("no")