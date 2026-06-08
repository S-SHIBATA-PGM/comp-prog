con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
str_a <- "A"
str_b <- "B"
str_c <- "C"
blank <- ""
space <- " "
one <- 1L
two <- 2L
three <- 3L
zero <- 0L
A <- arr[one] |>
  as.integer()
B <- arr[two] |>
  as.integer()
C <- arr[three] |>
  as.integer()
mame <- data.frame(
  abc   = c(str_a, str_b, str_c),
  point = c(A, B, C),
  rank  = c(zero, zero, zero)
)
mame <- mame[sort_index <- order(-mame$point, -xtfrm(mame$abc)), ]
mame$rank <- one:nrow(mame)
mame <- mame[order(mame$abc), ]
mame$rank |>
   cat(sep = "\n")
q("no")