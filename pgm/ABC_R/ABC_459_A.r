con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
HelloWorld <- "HelloWorld"
blank <- ""
space <- " "
one <- 1L
X <- arr[one] |>
  as.integer()
strsplit(x = HelloWorld, split = blank, fixed = TRUE)[[one]][-X] |>
  paste(collapse = blank) |>
  cat("\n", sep = blank)
q("no")