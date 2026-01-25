con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
nine <- 9L
zero <- 0L
Bad <- "Bad"
Good <- "Good"
blank <- ""
S <- arr[one]
if (grepl(paste0("([", zero, "-", nine, "])\\", one), S)) {
    Bad |>
        cat("\n", sep = blank)
} else {
    Good |>
        cat("\n", sep = blank)
}
q("no")