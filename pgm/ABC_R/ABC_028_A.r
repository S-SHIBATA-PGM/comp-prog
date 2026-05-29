con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Bad <- "Bad"
Good <- "Good"
Great <- "Great"
Perfect <- "Perfect"
one <- 1L
sixty <- 60L
ninety <- 90L
hundred <- 100L
zero <- 0L
blank <- ""
N <- arr[one] |>
  as.integer()
cut(N,
  breaks = c(zero, sixty, ninety, hundred, Inf),
  labels = c(Bad, Good, Great, Perfect),
  right = FALSE) |>
  as.character() |>
  cat("\n", sep = blank)
q("no")