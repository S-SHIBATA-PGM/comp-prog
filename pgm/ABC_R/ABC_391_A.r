con <- file(description = "stdin", open = "r")
D <- scan(file = con, what = character()) |> strsplit(split = "") |> unlist()
close(con)
NEWS <- new.env()
NEWS[["N"]] <- "S"
NEWS[["E"]] <- "W"
NEWS[["W"]] <- "E"
NEWS[["S"]] <- "N"
v <- c(NEWS[[D[1]]])
if (length(D) == 2) {
    v <- c(v, NEWS[[D[2]]])
}
v |> paste(collapse = "") |> cat()
cat("\n")