con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
hello <- "Hello,World!"
AC <- "AC"
WA <- "WA"
S <- arr[1]
if (S == hello) {
    AC |>
        cat("\n", sep = "")
} else {
    WA |>
        cat("\n", sep = "")
}
q("no")