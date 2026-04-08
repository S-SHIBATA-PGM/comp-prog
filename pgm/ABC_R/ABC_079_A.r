con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
d <- "d"
comma <- ","
l_brace <- "{"
r_brace <- "}"
l_paren <- "("
r_paren <- ")"
backslash <- "\\"
blank <- ""
one <- 1L
two <- 2L
N <- arr[one]
pattern <- paste0(
    l_paren, backslash, d, r_paren,
    backslash, one,
    l_brace, two, comma, r_brace
)
if (grepl(pattern, N)) {
    Yes |>
        cat("\n", sep = blank)
} else {
    No |>
        cat("\n", sep = blank)
}
q("no")