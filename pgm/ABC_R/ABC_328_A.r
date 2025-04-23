con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
X <- as.integer(strsplit(arr[1], split = " ")[[1]])[2]
S <- as.integer(strsplit(arr[2], split = " ")[[1]])
sum(S[S <= X]) |>
    cat("\n", sep = "")