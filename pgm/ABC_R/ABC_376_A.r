con <- file(description = "stdin", open = "r")
NC <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
tn <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
pre <- -NC[2]
Candy <- 0
for (t in tn) {
    if (t - pre >= NC[2]) {
        Candy <- Candy + 1
        pre <- t
    }
}
cat(Candy)
cat("\n")