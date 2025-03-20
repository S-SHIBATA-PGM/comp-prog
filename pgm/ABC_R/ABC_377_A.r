con <- file(description = "stdin", open = "r")
S <- readLines(con = con, n = 1) |>
    strsplit(split = "") |>
    unlist()
close(con)
Yes <- "Yes"
No <- "No"
A <- "A"
B <- "B"
C <- "C"
if ((S == A) |> any()
    && (S == B) |> any()
    && (S == C) |> any()) {
    cat(Yes)
} else {
    cat("No")
}
cat("\n")
