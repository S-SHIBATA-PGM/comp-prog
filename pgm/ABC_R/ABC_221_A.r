con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
thirty_two <- 32
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
thirty_two ^ (A - B) |>
    cat("\n", sep = "")
q("no")