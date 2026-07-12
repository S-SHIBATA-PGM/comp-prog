con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Of <- "Of"
blank <- ""
yn <- "\n"
one <- 1L
S <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]]
S[one] <- tolower(S[one])
paste0(Of, paste(S, collapse = blank)) |>
  cat(yn, sep = blank)
q("no")