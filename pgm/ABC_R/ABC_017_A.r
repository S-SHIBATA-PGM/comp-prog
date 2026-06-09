con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
space <- " "
blank <- ""
one <- 1L
two <- 2L
tenths_base <- 10.0
se <- strsplit(x = arr, split = space, fixed = TRUE) |>
  unlist() |>
  as.integer()
s_idx <- seq(from = one, to = length(se), by = two)
e_idx <- seq(from = two, to = length(se), by = two)
s <- se[s_idx]
e <- se[e_idx]
(s * (e / tenths_base)) |>
  sum() |>
  as.integer() |>
  cat("\n", sep = blank)
q("no")