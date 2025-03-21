con <- file(description = "stdin", open = "r")
S <- readLines(con = con, n = 1) |>
    strsplit(split = "") |>
    unlist()
close(con)
dot <- "."
brank <- ""
replace(S, S == dot, brank) |>
    cat("\n", sep = "")