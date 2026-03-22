con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
seven_hundred <- 700L
hundred <- 100L
one <- 1L
circle <- "o"
blank <- ""
S <- strsplit(arr[one], split = blank)[[one]]
(seven_hundred + hundred * sum(S == circle)) |>
    cat("\n", sep = blank)
q("no")