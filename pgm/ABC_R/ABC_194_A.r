con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
solid15 <- 15
solid10 <- 10
solid3 <- 3
fat8 <- 8
fat3 <- 3
one <- 1
two <- 2
three <- 3
four <- 4
space <- " "
blank <- ""
A <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
AB <- A + B
if (solid15 <= AB && fat8 <= B) {
    one |>
        cat("\n", sep = blank)
} else if (solid10 <= AB && fat3 <= B) {
    two |>
        cat("\n", sep = blank)
} else if (solid3 <= AB) {
    three |>
        cat("\n", sep = blank)
} else {
    four |>
        cat("\n", sep = blank)
}
q("no")