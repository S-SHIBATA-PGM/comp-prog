con <- file(description = "stdin", open = "r")
S <- readLines(con = con, n = 1)
close(con)
lt <- "<"
eq <- "="
gt <- ">"
Yes <- "Yes"
No <- "No"
ifelse(substr(S, 1, 1) == lt
    && substr(S, 2, nchar(S) - 1) == paste(rep(eq, nchar(S) - 2), collapse = "")
    && substr(S, nchar(S), nchar(S)) == gt, Yes, No) |>
    cat("\n", sep = "")