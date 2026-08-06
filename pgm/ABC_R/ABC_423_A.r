con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
thousand <- 1000L
X <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
C <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
(thousand * (X %/% (thousand + C))) |>
  cat(yn, sep = blank)
q("no")