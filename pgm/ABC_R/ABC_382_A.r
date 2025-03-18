con <- file(description = "stdin", open = "r")
ND <- readLines(con = con, n = 1) |> strsplit(split = " ") |> unlist() |> as.integer()
S <- readLines(con = con, n = 1) |> strsplit(split = "") |> unlist()
close(con)
dot <- "."
t <- table(S)
n <- as.numeric(t)
if (dim(t) > 1) {
    cat(n[names(t) == dot] + ND[2])
} else {
    cat(ND[2])
}
cat("\n")