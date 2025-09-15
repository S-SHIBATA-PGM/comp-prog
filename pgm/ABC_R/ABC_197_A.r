con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- arr[1]
one <- 1
two <- 2
paste0(substr(S, two, nchar(S)), substr(S, one, one)) |>
    cat("\n", sep = "")
q("no")