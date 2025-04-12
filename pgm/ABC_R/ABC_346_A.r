con <- file(description = "stdin", open = "r")
v <- readLines(con = con) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
A <- v[2 : v[1]]
B <- v[3 : (v[1] + 1)]
(A * B) |>
    cat()
cat("\n")