con <- file(description = "stdin", open = "r")
BG <- strsplit(readLines(con = con)[1], split = " ")[[1]] |>
    as.integer()
close(con)
B <- BG[1]
G <- BG[2]
Bat <- "Bat"
Glove <- "Glove"
ifelse(B > G, Bat, Glove) |>
    cat("\n", sep = "")