con <- file(description = "stdin", open = "r")
S <- readLines(con = con, n = 1)
close(con)
Yes <- "Yes"
No <- "No"
san <- "san"
cat(ifelse(endsWith(S, san), Yes, No))
cat("\n")