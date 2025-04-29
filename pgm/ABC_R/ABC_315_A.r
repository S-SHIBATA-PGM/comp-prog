library(stringr)
con <- file(description = "stdin", open = "r")
S <- readLines(con = con)
close(con)
a <- "a"
e <- "e"
i <- "i"
o <- "o"
u <- "u"
str_replace_all(S, paste0("[", a, e, i, o, u, "]"), "") |>
    cat("\n", sep = "")
q("no")