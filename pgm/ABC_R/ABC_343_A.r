con <- file(description = "stdin", open = "r")
AB <- readLines(con = con)
close(con)
ab <- as.integer(strsplit(AB[1], split = " ")[[1]])
zero <- 0
one <- 1
ifelse(sum(ab) == zero, one, zero) |>
    cat("\n", sep = "")