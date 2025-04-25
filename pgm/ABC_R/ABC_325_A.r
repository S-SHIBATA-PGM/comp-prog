con <- file(description = "stdin", open = "r")
S <- strsplit(readLines(con = con)[1], split = " ")[[1]][1]
close(con)
san <- "san"
c(S, san) |>
    cat()
cat("\n", sep = "")