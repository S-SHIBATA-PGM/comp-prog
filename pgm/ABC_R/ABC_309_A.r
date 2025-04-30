con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
Yes <- "Yes"
No <- "No"
Nine <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, byrow = TRUE)
# 右、左
drn <- 2
dy <- c(0, 0)
dx <- c(1, -1)
H <- nrow(Nine)
W <- ncol(Nine)
break_flg <- FALSE
ans <- "No"
for (y in seq_len(nrow(Nine))) {
    if (break_flg) {
        break
    }
    for (x in seq_len(ncol(Nine))) {
        if (break_flg) {
            break
        }
        if (Nine[y, x] == A) {
            for (k in 1:drn) {
                if (break_flg) {
                    break
                }
                ny <- y + dy[k]
                nx <- x + dx[k]
                if (ny <= 0 || H < ny || nx <= 0 || W < nx) next
                if (Nine[ny, nx] == B) {
                    break_flg <- TRUE
                    ans <- "Yes"
                }
            }
            break_flg <- TRUE
        }
    }
}
ans |>
    cat("\n", sep = "")
q("no")