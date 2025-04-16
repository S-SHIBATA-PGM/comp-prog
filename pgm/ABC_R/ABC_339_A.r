con <- file(description = "stdin", open = "r")
N <- strsplit(readLines(con = con)[1], split = "\\.")[[1]]
close(con)
N[length(N)] |>
    cat("\n", sep = "")