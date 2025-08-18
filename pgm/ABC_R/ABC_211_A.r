con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
three <- 3 |>
    as.numeric()
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.numeric()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.numeric()
C <- (A - B) / three + B
C |>
    cat("\n", sep = "")
q("no")