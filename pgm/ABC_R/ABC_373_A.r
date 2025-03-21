con <- file(description = "stdin", open = "r")
S <- scan(file = con, what = character(), n = 12)
close(con)
(nchar(S) == c(1:12)) |>
    sum() |>
    cat()
cat("\n")