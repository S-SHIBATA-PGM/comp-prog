con <- file(description = "stdin", open = "r")
AB <- readLines(con = con, n = 1) |>
    strsplit(split = " ") |>
    unlist() |>
    as.integer()
close(con)
no <- -1
t <- table(AB)
if (length(t) == 1) {
    no |>
        cat("\n", sep = "")
} else {
    setdiff(seq(1 : 3), AB) |>
        cat("\n", sep = "")
}