con <- file("stdin", "r")
D <- readLines(con) |> strsplit(split = "") |> unlist()
close(con)
NEWS <- c("N", "E", "W", "S")
SWEN <- c("S", "W", "E", "N")
v <- c(SWEN[NEWS == D[1]])
if (length(D) == 2) {
    v <- c(v, SWEN[NEWS == D[2]])
}
v |> paste(collapse = "") |> cat()
cat("\n")