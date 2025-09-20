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
A <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
AB <- A + B
if (solid15 <= AB && fat8 <= B) {
    one |>
        cat("\n", sep = "")
} else if (solid10 <= AB && fat3 <= B) {
    two |>
        cat("\n", sep = "")
} else if (solid3 <= AB) {
    three |>
        cat("\n", sep = "")
} else {
    four |>
        cat("\n", sep = "")
}
q("no")