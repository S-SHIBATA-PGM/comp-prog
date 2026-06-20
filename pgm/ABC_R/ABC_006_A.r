con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
YES <- "YES"
NO <- "NO"
s_three <- "3"
blank <- ""
one <- 1L
three <- 3L
N <- arr[one] |>
  as.integer()
if (grepl(pattern = s_three, x = N, fixed = TRUE) || !(N %% three)) {
  YES |> 
    cat("\n", sep = blank)
} else {
  NO |> 
    cat("\n", sep = blank)
}
q("no")