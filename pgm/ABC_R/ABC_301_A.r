con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
S <- strsplit(arr[2], split = "")[[1]]
t <- "T"
A <- "A"
table <- table(S)
if (length(table) == 1) {
    names(table[1]) |>
        cat("\n", sep = "")
} else if (table[1] < table[2]) {
    names(table[2]) |>
        cat("\n", sep = "")
} else if (table[1] > table[2]) {
    names(table[1]) |>
        cat("\n", sep = "")
} else {
    most <- table[1]
    t_cnt <- 0
    a_cnt <- 0
    for (i in seq_along(S)) {
        if (S[i] == t) {
            t_cnt <- t_cnt + 1
        } else {
            a_cnt <- a_cnt + 1
        }
        if (t_cnt >= most) {
            t |>
                cat("\n", sep = "")
            break
        } else if (a_cnt >= most) {
            A |>
                cat("\n", sep = "")
            break
        }
    }
}
q("no")