con <- file(description = "stdin", open = "r")
LR <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
Yes <- "Yes"
No <- "No"
Invalid <- "Invalid"
if (1 == LR[1] && 0 == LR[2]) {
    cat(Yes)
} else if (0 == LR[1] && 1 == LR[2]) {
    cat(No)
} else {
    cat(Invalid)
}
cat("\n")