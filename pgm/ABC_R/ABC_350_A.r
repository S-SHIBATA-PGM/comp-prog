con <- file(description = "stdin", open = "r")
S <- readLines(con = con, n = 1)
close(con)
Yes <- "Yes"
No <- "No"
end <- 349
ng <- 316
zero <- 0
num <- S |>
    substr(4, 6) |>
    as.integer()
ifelse(num <= end && num != ng && num != zero, Yes, No) |>
    cat("\n", sep = "")