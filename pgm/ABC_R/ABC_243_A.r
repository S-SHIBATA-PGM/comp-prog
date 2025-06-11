con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
t <- "T"
f <- "F"
M <- "M"
turn <- t
V <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
A <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
C <- strsplit(arr[1], split = " ")[[1]][4] |>
    as.integer()
while (V >= 0) {
    if (t == turn) {
        V <- V - A
        turn <- f
    } else if (turn == f) {
        V <- V - B
        turn <- M
    } else {
        V <- V - C
        turn <- t
    }
}
turn |>
    cat("\n", sep = "")
q("no")