con <- file(description = "stdin", open = "r")
N <- readLines(con = con, n = 1) |> strsplit(split = "") |> unlist() |> as.integer()
close(con)
t <- table(N)
Yes <- "Yes"
No <- "No"
only <- 1
one <- 1
two <- 2
three <- 3
t1 <- t[one == names(t)]
t2 <- t[two == names(t)]
t3 <- t[three == names(t)]
if (only == t1 |> length()
    && only == t2 |> length()
    && only == t3 |> length()
    && one == t1
    && two == t2
    && three == t3) {
    cat(Yes)
} else {
    cat(No)
}
cat("\n")