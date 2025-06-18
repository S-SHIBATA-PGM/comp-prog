con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- strsplit(arr[1], split = "")[[1]]
a <- strsplit(arr[2], split = " ")[[1]][1] |>
    as.integer()
b <- strsplit(arr[2], split = " ")[[1]][2] |>
    as.integer()
s <- S[a]
S[a] <- S[b]
S[b] <- s
S |>
    cat("\n", sep = "")
q("no")