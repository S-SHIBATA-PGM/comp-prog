con <- file("stdin", "r")
D <- scan(con, what = character()) |> strsplit(split = "") |> unlist()
NEWS <- c("N", "E", "W", "S")
SWEN <- c("S", "W", "E", "N")
v <- c(SWEN[NEWS == D[1]])
if (length(D) == 2) {
    v <- c(v, SWEN[NEWS == D[2]])
}
v |> paste(collapse = "") |> cat()
cat("\n")