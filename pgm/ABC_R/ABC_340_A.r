con <- file(description = "stdin", open = "r")
ABD <- as.integer(strsplit(readLines(con = con)[1], split = " ")[[1]])
seq(ABD[1], ABD[2], by = ABD[3]) |>
    cat(sep = " ")
cat("\n", sep = "")