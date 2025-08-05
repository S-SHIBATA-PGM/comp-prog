con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
problem4 <- 4
problem6 <- 6
problem8 <- 8
m <- new.env()
keys <- c("125", "211", "214")
m[[keys[one]]] <- problem4
m[[keys[two]]] <- problem6
m[[keys[three]]] <- problem8
N <- arr[1] |>
    as.integer()
for (k in keys) {
    if (k |>
            as.integer() >= N) {
        m[[k]] |>
            cat("\n", sep = "")
        break
    }
}
q("no")