con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
ABC <- strsplit(arr[one], split = space)[[one]] |>
    as.integer()
tbl <- table(ABC)
tbl[tbl == one] |>
    names() |>
    cat("\n", sep = blank)
q("no")