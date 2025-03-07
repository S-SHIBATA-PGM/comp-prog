con <- file("stdin", "r")
n <- scan(con, what = integer(), n = 1)
A <- scan(con, what = integer(), n = n)
close(con)
Yes <- "Yes"
No <- "No"
if (all(diff(A) > 0)) {
    cat(Yes)
} else {
    cat(No)
}
cat("\n")