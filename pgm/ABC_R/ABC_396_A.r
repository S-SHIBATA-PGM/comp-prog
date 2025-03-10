con <- file("stdin", "r")
N <- scan(con, what = integer(), n = 1)
A <- scan(con, what = integer(), n = N)
close(con)
no <- "no"
Yes <- "Yes"
No <- "No"
times <- 3
pre <- -1
cnt <- 0
for (a in A) {
    if (pre == a) {
        cnt <- cnt + 1
        if (times == cnt) {
            cat(Yes)
            cat("\n")
            q(no)
        }
    } else {
        cnt <- 1;
        pre <- a;
    }
}
cat(No)
cat("\n")
q(no)