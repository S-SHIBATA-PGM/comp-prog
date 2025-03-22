con <- file(description = "stdin", open = "r")
NTA <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
"Yes" <- "Yes"
"No" <- "No"
N <- NTA[1]
t <- NTA[2]
A <- NTA[3]
ifelse(max(t, A) > N %/% 2,
    Yes,
    No) |>
    cat("\n", sep = "")