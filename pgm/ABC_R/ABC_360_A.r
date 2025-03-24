con <- file(description = "stdin", open = "r")
S <- scan(file = con, what = character(), n = 1) |>
    strsplit(split = "") |>
    unlist()
close(con)
Yes <- "Yes"
No <- "No"
r <- "R"
m <- "M"
s <- "S"
ifelse(match(r, S) < match(m, S), Yes, No) |>
    cat("\n", sep = "")