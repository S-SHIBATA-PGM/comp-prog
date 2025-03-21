con <- file(description = "stdin", open = "r")
S <- readLines(con = con, n = 1) |>
    strsplit(split = "") |>
    unlist()
close(con)
dot <- "."
empty <- ""
replace(S, S == dot, empty) |>
    cat("\n", sep = "")