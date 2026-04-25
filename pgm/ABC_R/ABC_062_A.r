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
five <- 5L
six <- 6L
seven <- 7L
eight <- 8L
nine <- 9L
ten <- 10L
eleven <- 11L
twelve <- 12L
x <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
y <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
    as.integer()
g1 <- c(one, three, five, seven, eight, ten, twelve)
g2 <- c(four, six, nine, eleven)
g3 <- c(two)
if (x %in% g1 && y %in% g1 ||
        x %in% g2 && y %in% g2 ||
        x %in% g3 && y %in% g3) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")