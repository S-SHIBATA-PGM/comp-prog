con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Weather <- c("Sunny", "Cloudy", "Rainy")
one <- 1L
blank <- ""
S <- arr[one]
Weather[which(Weather == S) %% length(Weather) + one] |>
    cat("\n", sep = blank)
q("no")