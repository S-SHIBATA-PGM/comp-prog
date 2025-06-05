con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
zero <- 0
one <- 1
nine <- 9
S <- strsplit(arr[1], split = "")[[1]]
S <- sort(S)
for (i in seq_along(S)) {
    if (S[i] != as.character(i - one)) {
        (i - one) |>
            cat("\n", sep = "")
        break
    } else if (i == nine) {
        nine |>
            cat("\n", sep = "")
    }
}
q("no")