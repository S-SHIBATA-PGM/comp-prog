con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- arr[1]
v <- c("ACE", "BDF", "CEG", "DFA", "EGB", "FAC", "GBD")
Yes <- "Yes"
No <- "No"
if (S %in% v) {
    Yes |>
        cat("\n", sep = "")
} else {
    No |>
        cat("\n", sep = "")
}
q("no")