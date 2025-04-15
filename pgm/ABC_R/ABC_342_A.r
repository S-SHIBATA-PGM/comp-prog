con <- file(description = "stdin", open = "r")
S <- readLines(con = con)
close(con)
s <- strsplit(S[1], split = "")[[1]]
t <- table(s)
which(s == names(t[t == 1]))[1] |>
    cat("\n", sep = "")