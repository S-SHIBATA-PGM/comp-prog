con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
one <- 1
two <- 2
space <- " "
blank <- ""
H <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
W <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
h <- strsplit(arr[two], split = space)[[one]][one] |>
    as.integer()
w <- strsplit(arr[two], split = space)[[one]][two] |>
    as.integer()
(H * W - h * W - H * w + h * w) |>
    cat("\n", sep = blank)
q("no")