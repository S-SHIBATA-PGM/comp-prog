con <- file(description = "stdin", open = "r")
A <- scan(file = con, what = numeric(), n = 5)
close(con)
Yes <- "Yes"
No <- "No"
times <- 0
ret <- Yes
for (i in seq_along(A)) {
    if (i == length(A) && i != A[i]) {
        ret <- No
        break
    } else {
        if (A[i] != i) {
            if (times == 0 && A[i + 1] == i) {
                num <- A[i]
                A[i] <- A[i + 1]
                A[i + 1] <- num
                times = times + 1
            } else {
                ret <- No
                break
            }
        }
    }
}
cat(ifelse(times != 1, No, ret))
cat("\n")