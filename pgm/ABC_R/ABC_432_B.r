con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
c_zero <- "0"
yn <- "\n"
one <- 1L
two <- 2L
X <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]]
X <- sort(X)
len_val <- length(X)
if (X[one] == c_zero) {
  for (i in two:len_val) {
    if (X[i] != c_zero) {
      keep <- X[one]
      X[one] <- X[i]
      X[i] <- keep
      break
    }
  }
}
paste(X, collapse = blank) |>
  cat(yn, sep = blank)
q("no")