con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
yn <- "\n"
one <- 1L
c <- arr[one]
next_color <- c(B = "Y", Y = "R", R = "B")
next_color[c] |>
  cat(yn, sep = blank)
q("no")