con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
OK <- "OK";
Too <- "Too Many Requests";
space <- " "
yn <- "\n"
one <- 1L
two <- 2L
N <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
  as.integer()
M <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
  as.integer()
writeLines(ifelse(seq_len(N) <= M, OK, Too))
q("no")