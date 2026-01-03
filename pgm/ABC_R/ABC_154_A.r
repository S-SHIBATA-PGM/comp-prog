con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
three <- 3L
space <- " "
S <- strsplit(x = arr[one], split = space)[[one]][one]
t <- strsplit(x = arr[one], split = space)[[one]][two]
A <- strsplit(x = arr[two], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(x = arr[two], split = space)[[one]][two] |>
    as.integer()
U <- arr[three]
if (S == U) {
    A <- A - one
} else if (t == U) {
    B <- B - one
}
c(A, B) |>
    cat()
cat("\n")
q("no")