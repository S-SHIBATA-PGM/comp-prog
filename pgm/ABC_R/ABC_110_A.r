con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1L
two <- 2L
three <- 3L
ten <- 10L
blank <- ""
space <- " "
abc <- strsplit(arr[one], split = space)[[one]] |>
    as.integer()
abc <- abc |>
    sort(decreasing = TRUE)
(ten * abc[one] + abc[two] + abc[three]) |>
    cat("\n", sep = blank)
q("no")