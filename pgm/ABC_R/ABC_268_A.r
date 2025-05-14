con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
integer <- strsplit(arr[1], split = " ")[[1]] |>
    as.integer() |>
    table()
length(integer) |>
    cat("\n", sep = "")
q("no")