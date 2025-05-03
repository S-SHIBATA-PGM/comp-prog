library(stringr)
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- arr[2]
dot <- "."
bar <- "|"
ast <- "*"
i <- "in"
o <- "out"
if (str_count(S,
        c("\\", bar, "\\", dot, "*\\", ast, "\\", dot, "*\\", bar) |>
            paste(collapse = "")) > 0) {
    i |>
        cat("\n", sep = "")
} else {
    o |>
        cat("\n", sep = "")
}
q("no")