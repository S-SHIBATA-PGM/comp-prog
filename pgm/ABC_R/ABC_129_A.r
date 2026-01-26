con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
three <- 3L
blank <- ""
space <- " "
P <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
Q <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
R <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
PQR <- c(P, Q, R)
sum(sort(PQR)[one:two]) |>
    cat("\n", sep = blank)
q("no")