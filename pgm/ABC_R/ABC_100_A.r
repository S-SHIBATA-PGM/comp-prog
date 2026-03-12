con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yay <- "Yay!"
no <- ":("
blank <- ""
space <- " "
eight <- 8L
one <- 1L
two <- 2L
zero <- 0L
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if (A <= eight && B <= eight) {
    Yay |>
        cat("\n", sep = blank)
} else {
    no |>
        cat("\n", sep = blank)
}
q("no")