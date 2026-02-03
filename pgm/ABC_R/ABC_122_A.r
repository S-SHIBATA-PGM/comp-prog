con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- "A"
t <- "T"
G <- "G"
C <- "C"
blank <- ""
b <- arr
base_pairs <- c(A = t, t = A, G = C, C = G)
base_pairs[b] |>
    cat("\n", sep = blank)
q("no")