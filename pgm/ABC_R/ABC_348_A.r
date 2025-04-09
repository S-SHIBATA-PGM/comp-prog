con <- file(description = "stdin", open = "r")
N <- readLines(con = con, n = 1) |>
    as.integer()
close(con)
fail <- "x"
success <- "o"
num <- 3
table <- c(1 : N)
ans <- rep(success, N)
ans[table %% 3 == 0] <- fail
ans |>
    cat("\n", sep = "")