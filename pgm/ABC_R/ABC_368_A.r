con <- file(description = "stdin", open = "r")
NK <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
A <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
cat(c(A[(NK[1] - NK[2] + 1) : NK[1]], A[1 : (NK[1] - NK[2])]), sep = " ")
cat("\n")