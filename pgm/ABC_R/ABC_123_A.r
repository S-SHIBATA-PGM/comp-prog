con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
no <- ":("
Yay <- "Yay!"
blank <- ""
space <- " "
one <-  1L
two <-  2L
three <-  3L
four <- 4L
five <- 5L
six <- 6L
a <- strsplit(arr[one], split = space) |>
    as.integer()
b <- strsplit(arr[two], split = space) |>
    as.integer()
c <- strsplit(arr[three], split = space) |>
    as.integer()
d <- strsplit(arr[four], split = space) |>
    as.integer()
e <- strsplit(arr[five], split = space) |>
    as.integer()
k <- strsplit(arr[six], split = space) |>
    as.integer()
if (e - a > k) {
    no |>
        cat("\n", sep = blank)
} else {
    Yay |>
        cat("\n", sep = blank)
}
q("no")