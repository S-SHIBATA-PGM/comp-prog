con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
N <- arr[1] |>
    as.integer()
S <- strsplit(arr[2], split = "")[[1]]
t <- strsplit(arr[3], split = "")[[1]]
one <- "1"
l <- "l"
zero <- "0"
o <- "o"
Yes <- "Yes"
No <- "No"
c_one <- utf8ToInt(one)
c_l <- utf8ToInt(l)
c_zero <- utf8ToInt(zero)
c_o <- utf8ToInt(o)
match <- TRUE
for (i in seq_len(N)) {
    if (S[i] != t[i]
        && ((min(utf8ToInt(S[i]), utf8ToInt(t[i])) != c_one
                || max(utf8ToInt(S[i]), utf8ToInt(t[i])) != c_l))
        && ((min(utf8ToInt(S[i]), utf8ToInt(t[i])) != c_zero
                || max(utf8ToInt(S[i]), utf8ToInt(t[i])) != c_o))) {
        match <- FALSE
        break
    }
}
if (match) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")