con <- file("stdin", "r")
A <- scan(con, what = numeric(), n = 3)
close(con)
Yes <- "Yes"
No <- "No"
B <- sort(A)
if (B[1] * B[2] == B[3]) {
    cat(Yes)
} else {
    cat(No)
}
cat("\n")