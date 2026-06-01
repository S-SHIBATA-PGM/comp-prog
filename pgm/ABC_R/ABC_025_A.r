con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
five <- 5L
S <- arr[one]
N <- arr[two] |>
  as.integer()
i <- (N - one) %/% five + one
j <- (N - one) %% five + one
paste0(substr(S, i, i), substr(S, j, j)) |>
  cat("\n", sep = blank)
q("no")