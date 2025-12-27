con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
unsafe <- "unsafe"
safe <- "safe"
one <- 1
two <- 2
blank <- ""
space <- " "
S <- strsplit(arr[one], split = space)[[one]][one] |>
    as.integer()
W <- strsplit(arr[one], split = space)[[one]][two] |>
    as.integer()
if (S <= W) {
    unsafe |>
        cat("\n", sep = blank)
} else {
    safe |>
        cat("\n", sep = blank)
}
q("no")