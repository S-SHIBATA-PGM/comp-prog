con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
blank <- ""
s <- "s"
es <- "es"
S <- arr[one]
if (substr(S, nchar(S), nchar(S)) == s) {
    paste0(S, es) |>
        cat("\n", sep = blank)
} else {
    paste0(S, s) |>
        cat("\n", sep = blank)
}
q("no")