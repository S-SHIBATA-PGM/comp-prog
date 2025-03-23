con <- file(description = "stdin", open = "r")
N <- scan(file = con, what = character(), n = 1) |>
    as.integer()
close(con)
hyphen <- "-"
equal <- "="
c(rep(hyphen, (N - (2 - N %% 2)) / 2),
    rep(equal, 2 - N %% 2),
    rep(hyphen, (N - (2 - N %% 2)) / 2)) |>
    cat("\n", sep = "")