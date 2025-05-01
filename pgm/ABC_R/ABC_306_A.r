con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- strsplit(arr[2], split = "")[[1]]
rep(S, each = 2) |>
    cat("\n", sep = "")
q("no")