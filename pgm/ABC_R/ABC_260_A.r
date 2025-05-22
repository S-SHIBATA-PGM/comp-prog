con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
no <- -1
S <- strsplit(arr[1], split = "")[[1]]
tab <- table(S)
if (any(tab == 1)) {
    names(tab[tab == 1])[1] |>
        cat("\n", sep = "")
} else {
    no |>
        cat("\n", sep = "")
}
q("no")