con <- file(description = "stdin", open = "r")
arr <- readLines(con = con)
close(con)
unity <- 1
onehundred_percent <- 100
one <- 1
two <- 2
A <- strsplit(arr[one], split = " ")[[one]][one] |>
    as.integer()
B <- strsplit(arr[one], split = " ")[[one]][two] |>
    as.integer()
((unity - B / A) * onehundred_percent) |>
    cat("\n", sep = "")
q("no")