check_solved <- function(arr, p) {
    if (p == 1) {
        arr[1] <- arr[1] + 1
    } else if (p == 2) {
        arr[2] <- arr[2] + 1
    } else if (p == 3) {
        arr[1] <- arr[1] + 1
        arr[2] <- arr[2] + 1
    } else if (p == 4) {
        arr[3] <- arr[3] + 1
    } else if (p == 5) {
        arr[1] <- arr[1] + 1
        arr[3] <- arr[3] + 1
    } else if (p == 6) {
        arr[2] <- arr[2] + 1
        arr[3] <- arr[3] + 1
    } else if (p == 7) {
        arr[1] <- arr[1] + 1
        arr[2] <- arr[2] + 1
        arr[3] <- arr[3] + 1
    }
    return(arr)
}
con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
AB <- c(0, 0, 0)
AB <- check_solved(AB, A)
AB <- check_solved(AB, B)
point <- 0
for (i in seq_len(3)) {
    if (0 < AB[i]) {
        point <- point + i
        if (i == 3) {
            point <- point + 1
        }
    }
}
point |>
    cat("\n", sep = "")
q("no")