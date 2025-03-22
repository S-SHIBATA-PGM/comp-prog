con <- file(description = "stdin", open = "r")
N <- scan(file = con, what = numeric(), n = 1)
close(con)
high <- 1
fever <- 2
normal <- 3
n_high <- 38.0
n_normal <- 37.5
ifelse(n_high <= N, high, ifelse(n_normal <= N, fever, normal)) |>
    cat("\n", sep = "")