con <- file(description = "stdin", open = "r")
N <- readLines(con = con, n = 1) |> as.integer()
S <- readLines(con = con, n = 1) |> strsplit(split = "/") |> unlist()
close(con)
Yes <- "Yes"
No <- "No"
one <- "1"
two <- "2"
if (length(S) == 1 && S[1] == "") {
    cat(Yes)
} else if (length(S) != 2) {
    cat(No)
} else if (nchar(S[1]) == nchar(S[2])) {
    S1 <- S[1] |> strsplit(split = "") |> unlist()
    S2 <- S[2] |> strsplit(split = "") |> unlist()
    if (all(S1 == one) && all(S2 == two)) {
        cat(Yes)
    } else {
        cat(No)
    }
} else {
    cat(No)
}
cat("\n")