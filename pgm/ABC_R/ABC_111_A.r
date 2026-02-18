con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
nine <- 9
blank <- ""
n <- arr[one]
chartr(paste0(one, nine), paste0(nine, one), n) |>
    cat("\n", sep = blank)
q("no")