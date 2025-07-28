con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
no <- -1
zero <- 0
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
C <- strsplit(arr[1], split = " ")[[1]][3] |>
    as.integer()
multiple <- A + C - A %% C
if (A %% C == zero) {
    A |>
        cat("\n", sep = "")
} else if (multiple <= B) {
    multiple |>
        cat("\n", sep = "")
} else {
    no |>
        cat("\n", sep = "")
}
q("no")