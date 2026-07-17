con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
c_i <- "i"
c_j <- "j"
blank <- ""
pipe <- "|"
yn <- "\n"
one <- 1L
zero <- 0L
pattern = paste0(c_i, pipe, c_j)
S <- arr[one]
pos <- gregexpr(pattern = pattern, text = S, fixed = FALSE)
if (pos[[one]][one] == -one) {
  zero |>
    cat(yn, sep = blank)
} else {
  pos[[one]] |>
    length() |>
    cat(yn, sep = blank)
}
q("no")