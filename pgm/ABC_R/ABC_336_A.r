con <- file(description = "stdin", open = "r")
N <- readLines(con = con) |>
    as.integer()
close(con)
L <- "L"
o <- "o"
n <- "n"
g <- "g"
paste(L, paste(rep(o, times = N), collapse = ""), n, g, sep = "") |>
    cat("\n", sep = "")