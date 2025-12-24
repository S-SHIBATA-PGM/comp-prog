con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
OK <- "OK"
NG <- "NG"
one <- 1
two <- 2
blank <- ""
space <- " "
K <- arr[one] |>
    as.integer()
A <- strsplit(arr[two], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[two], split = space)[[one]][two] |>
    as.integer()
if (A <= B %/% K * K) {
    OK |>
        cat("\n", sep = blank)
} else {
    NG |>
        cat("\n", sep = blank)
}
q("no")