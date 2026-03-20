con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
four <- 4L
a <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
b <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
c <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
d <- strsplit(arr[one], split = space)[[one]][four] |>
    as.integer()
diff <- function(x, y) abs(x - y)
if (diff(a, c) <= d || (diff(a, b) <= d && diff(b, c) <= d)) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")