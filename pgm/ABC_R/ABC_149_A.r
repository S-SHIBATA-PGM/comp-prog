con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
space <- " "
one <- 1L
two <- 2L
five_hundred <- 500L
S <- strsplit(x = arr[one], split = space)[[one]][one]
t <- strsplit(x = arr[one], split = space)[[one]][two]
paste0(t, S) |>
    cat("\n", sep = blank)
q("no")