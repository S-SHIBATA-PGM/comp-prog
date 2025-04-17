library(stringr)
con <- file(description = "stdin", open = "r")
S <- readLines(con = con)[1]
close(con)
Yes <- "Yes"
No <- "No"
ifelse(S == str_to_sentence(S, locale = "en"), Yes, No) |>
    cat("\n", sep = "")