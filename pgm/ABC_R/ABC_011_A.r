con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Y <- "%Y"
m <- "%m"
hyphen <- "-"
month <- "month"
blank <- ""
space <- " "
one <- 1L
two <- 2L
N <- arr[one] |>
  as.integer()
dt <- as.Date(paste(format(Sys.Date(), format = Y), N, one, sep = hyphen))
next_dt <- seq(dt, by = paste(one, month), length.out = two)[two]
as.integer(format(next_dt, m)) |>
  cat("\n", sep = blank)
q("no")