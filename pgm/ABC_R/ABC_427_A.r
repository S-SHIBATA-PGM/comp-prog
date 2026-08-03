con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
S <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]]
len <- length(S)
idx <- (len + one) %/% two
paste(S[-idx], collapse = blank) |>
  cat(yn, sep = blank)
q("no")