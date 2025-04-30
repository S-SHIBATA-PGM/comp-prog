con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- strsplit(arr[2], split = "")[[1]]
A <- "A"
B <- "B"
a <- 0
b <- 0
c <- 0
for (i in seq_along(S)) {
    if (S[i] == A) {
        a <- a + 1
    } else if (S[i] == B) {
        b <- b + 1
    } else {
        c <- c + 1
    }
    if (a > 0 && b > 0 && c > 0) {
        i |>
            cat("\n", sep = "")
        break
    }
}
q("no")