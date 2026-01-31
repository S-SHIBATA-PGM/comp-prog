con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <-  1L
two <-  2L
blank <- ""
space <- " "
N <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
K <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
S <- strsplit(arr[two], split = blank)[[one]]
S[K] <- tolower(S[K])
S |>
    paste0() |>
    cat("\n", sep = blank)
q("no")