con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
A <- strsplit(arr[1], split = " ")[[1]][1] |>
    as.integer()
B <- strsplit(arr[1], split = " ")[[1]][2] |>
    as.integer()
A ^ B |>
    cat("\n", sep = "")
q("no")