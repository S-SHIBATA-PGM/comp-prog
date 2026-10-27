con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
a <- "a"
z <- "z"
blank <- ""
yn <- "\n"
one <- 1L
S <- arr[one]
s_vec <- strsplit(x = arr[one], split = blank, fixed = TRUE)[[one]]
len <- length(s_vec)
char_code_vec <- utf8ToInt(S)
base_code <- utf8ToInt(a)
indice_vec <- char_code_vec - base_code + one
cnt <- tabulate(indice_vec, nbins = (utf8ToInt(z) - base_code + one))
max_val <- max(cnt)
keep_mask <- cnt[indice_vec] < max_val
filtered_chars <- s_vec[keep_mask]
paste0(filtered_chars, collapse = blank) |>
  cat(yn, sep = blank)
q("no")