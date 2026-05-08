con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
a <- "a"
e <- "e"
i <- "i"
o <- "o"
u <- "u"
vowel <- "vowel"
consonant <- "consonant"
one <- 1L
aeiou <- c(a, e, i, o, u)
blank <- ""
c <- arr[one]
if (c %in% aeiou) {
  vowel |>
    cat("\n", sep = blank)
} else {
  consonant |>
    cat("\n", sep = blank)
}
q("no")