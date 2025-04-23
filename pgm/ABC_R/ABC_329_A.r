con <- file(description = "stdin", open = "r")
S <- strsplit(readLines(con = con)[1], split = "")[[1]]
close(con)
S |>
    cat()
cat("\n")