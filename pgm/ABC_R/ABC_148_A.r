con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
blank <- ""
one <- 1L
two <- 2L
three <- 3L
A <- arr[one] |>
    as.integer()
B <- arr[two] |>
    as.integer()
choice <- c(one, two, three)
wrong <- c(A, B)
setdiff(choice, wrong) |>
    cat("\n", sep = blank)
q("no")