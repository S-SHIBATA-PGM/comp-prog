con <- file(description = "stdin", open = "r")
Y <- scan(file = con, what = integer(), n = 1)
close(con)
Year <- 365
LeapYear <- 366
ifelse(Y %% 4 != 0,
    Year,
    ifelse(Y %% 4 == 0 && Y %% 100 != 0,
        LeapYear,
        ifelse(Y %% 100 == 0 && Y %% 400 != 0,
            Year,
            LeapYear))) |>
    cat("\n", sep = "")