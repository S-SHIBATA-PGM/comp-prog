con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
twenty_five <- 25L
hundred <- 100L
H <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
W <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
if (hundred ^ two * W >= twenty_five * H ^ 2) {
  Yes |>
    cat(yn, sep = blank)
} else {
  No |>
    cat(yn, sep = blank)
}
q("no")