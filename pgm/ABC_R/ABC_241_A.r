con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
a <- strsplit(arr[1], split = " ")[[1]] |>
    as.integer()
a[a[a[one] + one] + one] |>
    cat("\n", sep = "")
q("no")