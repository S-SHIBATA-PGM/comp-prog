con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
M <- arr[one] |>
    as.integer()
current_year <- format(Sys.Date(), "%Y") |>
    as.integer()
UTC <- "UTC"
hours <- "hours"
fmt <- "%d-%02d-%02d %02d:%02d:%02d"
y1 <- 1
M1 <- 1
M12 <- 12
d1 <- 1
d30 <- 30
h0 <- 0
m0 <- 0
s0 <- 0
this_year_str <- sprintf(fmt = fmt, current_year, M12, d30, M, m0, s0)
this_year_tp  <- as.POSIXct(this_year_str, tz = UTC)
next_year_str <- sprintf(fmt = fmt, current_year + y1, M1, d1, h0, m0, s0)
next_year_tp  <- as.POSIXct(next_year_str, tz = UTC)
duration <- difftime(next_year_tp, this_year_tp, units = hours)
duration |>
    as.integer() |>
    cat("\n", sep = blank)
q("no")