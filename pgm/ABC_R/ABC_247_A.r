con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
zero <- 0
S <- strsplit(arr[1], split = "")[[1]]
S <- S[-length(S)]
S <- append(S, zero, after = 0)
S |>
    cat("\n", sep = "")
q("no")