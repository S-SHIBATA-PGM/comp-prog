con <- file("stdin", "r")
A <- scan(con, what = numeric(), n = 3)
close(con)
Yes <- "Yes"
No <- "No"
A <- sort(A)
if (A[3] == A[1] * A[2]) {
    cat(Yes)
} else {
    cat(No)
}
cat("\n")