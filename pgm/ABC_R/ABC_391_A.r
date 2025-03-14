library(stringr)
con <- file("stdin", "r")
D <- readLines(con) |> str_split(pattern = "") |> unlist()
close(con)
NEWS <- c("N", "E", "W", "S")
SWEN <- c("S", "W", "E", "N")
v <- c()
for (d in D) {
    v <- c(v, SWEN[NEWS == d])
}
v |> paste(collapse="") |> cat()
cat("\n")