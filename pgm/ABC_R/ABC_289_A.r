con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
zero <- "0"
one <- "1"
dummy <- "x"
s <- arr[1]
flip <- s
flip <- gsub(zero, dummy, flip)
flip <- gsub(one, zero, flip)
flip <- gsub(dummy, one, flip)
flip |>
    cat("\n", sep = "")
q("no")