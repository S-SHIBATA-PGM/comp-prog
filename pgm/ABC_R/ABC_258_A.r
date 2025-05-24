library(lubridate)
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
datetime <- ymd_hms("2022-7-2 21:00:00", tz = "Asia/Tokyo")
colon <- ":"
K <- arr[1] |>
    as.integer()
datetime <- datetime %m+% minutes(K)
sprintf(paste0("%02d", colon, "%02d"), hour(datetime), minute(datetime)) |>
    cat("\n", sep = "")
q("no")