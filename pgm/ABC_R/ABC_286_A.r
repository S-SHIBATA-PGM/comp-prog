con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
NPQRS <- strsplit(arr[1], split = " ")[[1]]
N <- NPQRS[1] |>
    as.integer()
P <- NPQRS[2] |>
    as.integer()
Q <- NPQRS[3] |>
    as.integer()
R <- NPQRS[4] |>
    as.integer()
S <- NPQRS[5] |>
    as.integer()
A <- strsplit(arr[2], split = " ")[[1]] |>
    as.integer()
range_swap <- A
j <- R
for (i in P:Q) {
    dummy <- range_swap[i]
    range_swap[i] <- range_swap[j]
    range_swap[j] <- dummy
    j <- j + 1
}
range_swap |>
    cat()
cat("\n", sep = "")
q("no")