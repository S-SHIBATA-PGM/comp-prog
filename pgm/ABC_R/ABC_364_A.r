con <- file(description = "stdin", open = "r")
N <- readLines(con = con, n = 1) |>
    as.integer()
S <- readLines(con = con, n = N)
close(con)
Yes <- "Yes"
No <- "No"
no <- "no"
sweet <- "sweet"
cnt <- 0
for (i in seq_along(S)) {
    if (i != N && cnt == 1 && S[i] == sweet) {
        No |>
            cat("\n", sep = "")
        q("no")
    } else if (S[i] == sweet) {
        cnt <- cnt + 1
    } else {
        cnt <- 0
    }
}
Yes |>
    cat("\n", sep = "")
q("no")