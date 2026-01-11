con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
no <- -1L
one <- 1L
two <- 2L
nine <- 9L
blank <- ""
space <- " "
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if (A <= nine && B <= nine) {
    (A * B) |>
        cat("\n", sep = blank)
} else {
    no |>
        cat("\n", sep = blank)
}
q("no")