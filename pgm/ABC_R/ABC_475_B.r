con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
space <- " "
blank <- ""
yn <- "\n"
one <- 1L
two <- 2L
ten <- 10L
hundred <- 100L
thousand <- 1000L
N <- arr[one] |>
  as.integer()
A <- strsplit(x = arr[two], split = space, fixed = TRUE)[[one]] |>
  as.integer()
change <- ((thousand - (A %% thousand)) %% thousand)
c(sum(change %% ten), sum((change %/% ten) %% ten), sum(change %/% hundred)) |>
  paste(collapse = space) |>
  cat(yn, sep = blank)
q("no")