con <- file(description = "stdin", open = "r")
N <- readLines(con = con, n = 1) |>
    as.integer()
S <- readLines(con = con, n = N) |>
    strsplit(split = " ") |>
    unlist()
close(con)
Takahashi <- "Takahashi"
t <- table(S)
t <- t[names(t) == Takahashi]
ifelse(length(t) == 0, 0, t) |>
    cat("\n", sep = "")