con <- file(description = "stdin", open = "r")
S <- readLines(con = con, n = 1) |>
    strsplit(split = "\\|") |>
    unlist()
close(con)
ifelse(length(S) == 3, paste0(S[1], S[3]), S[1]) |>
    cat("\n", sep = "")