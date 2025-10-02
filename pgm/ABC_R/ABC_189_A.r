con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Won <- "Won"
Lost <- "Lost"
one <- 1
S <- strsplit(arr[one], split = "")[[one]]
if ((S |>
            table() |>
            length()) == one) {
    Won |>
        cat("\n", sep = "")
} else {
    Lost |>
        cat("\n", sep = "")
}
q("no")