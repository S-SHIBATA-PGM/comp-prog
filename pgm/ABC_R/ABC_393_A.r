con <- file("stdin", "r")
S1 <- scan(con, what = character(), n = 1)
S2 <- scan(con, what = character(), n = 1)
close(con)
sick <- "sick"
fine <- "fine"
if (sick == S1 && sick == S2) {
    cat(1)
} else if (sick == S1 && fine == S2) {
    cat(2)
} else if (fine == S1 && sick == S2) {
    cat(3)
} else {
    cat(4)
}
cat("\n")