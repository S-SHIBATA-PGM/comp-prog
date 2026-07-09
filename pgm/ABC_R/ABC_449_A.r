con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
dot <- "."
percent <- "%"
f <- "f"
blank <- ""
one <- 1
fifteen <- 15
d_two <- 2.0
fmt <- paste0(percent, dot, fifteen, f)
D <- arr[one] |>
  as.numeric()
(pi * (D / d_two) ^ d_two) |>
  sprintf(fmt = fmt) |>
  cat("\n", sep = blank)
q("no")