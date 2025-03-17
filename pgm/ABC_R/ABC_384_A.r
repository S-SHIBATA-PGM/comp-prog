con <- file(description = "stdin", open = "r")
Nc <- readLines(con = con, n = 1) |> strsplit(split = " ") |> unlist()
S <- readLines(con = con, n = 1) |> strsplit(split = "") |> unlist()
close(con)
N <- Nc[1] |> as.integer()
c1 <- Nc[2]
c2 <- Nc[3]
for (s in S) {
    if (s != c1) {
      cat(c2)
    } else {
      cat(s)
    }
}
cat("\n")