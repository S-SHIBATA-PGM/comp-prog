con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
ten <- 10
blank <- ""
space <- " "
abc <- strsplit(arr[one], split = space)[[one]] |>
    as.integer()
abc <- abc |>
    sort(decreasing = TRUE)
(ten * abc[one] + abc[two] + abc[three]) |>
    cat("\n", sep = blank)
q("no")