con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
o <- "o"
yn <- "\n"
one <- 1L
two <- 2L
N <- arr[one] |>
  as.integer()
S <- arr[two]
paste0(strrep(x = o, times = N - nchar(S)), S) |>
  cat(yn, sep = blank)
q("no")