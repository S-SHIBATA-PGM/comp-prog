con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
three <- 3
blank <- ""
space <- " "
AB <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
BC <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
CA <- strsplit(arr[one], split = space)[[one]][three] |>
    as.integer()
(AB * BC / two) |>
    cat("\n", sep = blank)
q("no")