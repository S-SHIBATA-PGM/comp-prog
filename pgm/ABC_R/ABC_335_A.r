con <- file(description = "stdin", open = "r")
S <- readLines(con = con)
close(con)
four <- "4"
paste(substr(S, 1, nchar(S) - 1), four, sep = "") |>
    cat("\n", sep = "")