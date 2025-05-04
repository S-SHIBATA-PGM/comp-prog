library(stringr)
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
M <- "M"
f <- "F"
Yes <- "Yes"
No <- "No"
S <- arr[2]
if (str_count(S, paste0(M, M)) == 0 && str_count(S, paste0(f, f)) == 0) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")