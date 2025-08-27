con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
blank <- ""
space <- " "
ABC <- strsplit(arr[one], split = space)[[one]] |>
    as.integer()
ABC <- sort(ABC, decreasing = TRUE)
(ABC[one] + ABC[two]) |>
    cat("\n", sep = blank)
q("no")