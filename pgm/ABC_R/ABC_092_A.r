con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
three <- 3L
four <- 4L
A <- arr[one] |>
    as.integer()
B <- arr[two] |>
    as.integer()
C <- arr[three] |>
    as.integer()
D <- arr[four] |>
    as.integer()
(min(A, B) + min(C, D)) |>
    cat("\n", sep = blank)
q("no")