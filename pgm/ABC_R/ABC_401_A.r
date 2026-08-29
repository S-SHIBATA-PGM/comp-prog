con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Success <- "Success"
Failure <- "Failure"
blank <- ""
yn <- "\n"
one <- 1L
two_hundred <- 200L
two_hundred_ninety_nine <- 299L
S <- arr[one] |>
  as.integer()
if (two_hundred <= S && S <= two_hundred_ninety_nine) {
  Success |>
    cat(yn, sep = blank)
} else {
  Failure |>
    cat(yn, sep = blank)
}
q("no")