con <- file(description = "stdin", open = "r")
R <- scan(file = con, what = integer(), n = 1)
close(con)
(100 - (R %% 100)) |>
    cat("\n", sep = "")