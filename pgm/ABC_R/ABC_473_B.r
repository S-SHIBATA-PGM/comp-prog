con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
A <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
tbl <- table(A)
val <- tbl |>
  names() |>
  as.integer()
cnt <- tbl |>
  unname()
val[cnt %% two == one] |>
  sum() |>
  cat(yn, sep = blank)
q("no")