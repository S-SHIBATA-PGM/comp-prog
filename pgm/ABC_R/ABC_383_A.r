con <- file(description = "stdin", open = "r")
N <- scan(file = con, what = integer(), n = 1)
TV <- scan(file = con, what = integer(), n = 2 * N)
close(con)
T <- TV[rep(c(TRUE, FALSE), N)]
V <- TV[rep(c(FALSE, TRUE), N)]
time <- c(0, diff(T))
water <- 0
for (i in seq_along(V)) {
    water = max(0, water - time[i]) + V[i];
}
cat(water)
cat("\n")