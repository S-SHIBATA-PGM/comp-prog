con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- strsplit(arr[1], split = "")[[1]]
S[(length(S) + 1) %/% 2] |>
    cat("\n", sep = "")
q("no")