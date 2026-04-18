con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
Yes <- "Yes"
No <- "No"
blank <- ""
space <- " "
one <- 1L
two <- 2L
n <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][one] |>
    as.integer()
m <- strsplit(x = arr[one], split = space, fixed = TRUE)[[one]][two] |>
    as.integer()
((n - one) * (m - one)) |>
    cat("\n", sep = blank)
q("no")