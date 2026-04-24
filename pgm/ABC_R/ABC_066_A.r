con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
abc <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]] |>
    as.integer() |>
    sort()
(abc[one] + abc[two]) |>
    cat("\n", sep = blank)
q("no")