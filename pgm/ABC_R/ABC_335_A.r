con <- file(description = "stdin", open = "r")
S <- readLines(con = con)
close(con)
four <- "4"
paste0(substr(S, 1, nchar(S) - 1), four) |>
    cat("\n", sep = "")