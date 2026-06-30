con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
hello_world <- "HelloWorld"
blank <- ""
space <- " "
one <- 1L
X <- arr[one] |>
  as.integer()
strsplit(x = hello_world, split = blank, fixed = TRUE)[[one]][-X] |>
  paste(collapse = blank) |>
  cat("\n", sep = blank)
q("no")